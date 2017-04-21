//
// Created by thongpv3 on 18/04/2017.
//
#include <cbor.h>
#include <vector>
#include <boost/any.hpp>
#include <iostream>
#include <fstream>
#include "../../serializer/cbor_item.h"
#include "../person_info.h"
#include "../../serializer/serializer.h"

template <typename T>
struct serialize;

void test_cbor_item() {
    using namespace cbor;
    auto item_ptr = std::move(create_map());
    std::cout << item_ptr->to_string() << std::endl;
    std::cout << item_ptr->as_map()->at("guid")->as_text() << std::endl;
}

void test_libcbor_serializer_map() {
    std::shared_ptr<cbor_map> item_ptr = std::make_shared<cbor_map>(
        "id", cbor_uint(20136495u),
        "name", cbor_text("Pham Van Thong"),
        "age", cbor_uint(1995u),
        "education", cbor_map(
            "university", cbor_text("Hanoi University of Science and Technology"),
            "industry", cbor_text("Computer Science")
            ),
        "friends", cbor_array(
                cbor_map("name", cbor_text("Nguyen Dinh Ky"),
                         "birthyear", cbor_int(1994)),
                cbor_map("name", cbor_text("Nguyen Huu Tung"),
                         "birthyear", cbor_int(1995))
            )
    );
    bytes buffer = serializer<libcbor_serializer>::serialize(item_ptr);
    std::ofstream of("test_libcbor_serializer_map.cbor");
    of.write(buffer.data(), buffer.size());
    of.close();
}

void test_libcbor_serializer_array() {
    std::shared_ptr<cbor_array> item_ptr = std::make_shared<cbor_array>(
        cbor_map(
                "id", cbor_uint(20136495u),
                "name", cbor_text("Pham Van Thong"),
                "age", cbor_uint(1995u),
                "education", cbor_map(
                        "university", cbor_text("Hanoi University of Science and Technology"),
                        "industry", cbor_text("Computer Science")
                ),
                "friends", cbor_array(
                        cbor_map("name", cbor_text("Nguyen Dinh Ky"),
                                 "birthyear", cbor_int(1994)),
                        cbor_map("name", cbor_text("Nguyen Huu Tung"),
                                 "birthyear", cbor_int(1995))
                )
        ),
        cbor_map(
                "id", cbor_uint(20133210u),
                "name", cbor_text("Nguyen Hoang Quan"),
                "age", cbor_uint(1992u),
                "education", cbor_map(
                        "university", cbor_text("Hanoi University of Science and Technology"),
                        "industry", cbor_text("Computer Science")
                ),
                "friends", cbor_array(
                        cbor_map("name", cbor_text("Nguyen Dinh Ky"),
                                 "birthyear", cbor_int(1994)),
                        cbor_map("name", cbor_text("Nguyen Huu Tung"),
                                 "birthyear", cbor_int(1995))
                         )
                 )
    );
    bytes buffer = serializer<libcbor_serializer>::serialize(item_ptr);
    std::ofstream of("test_libcbor_serializer_array.cbor");
    of.write(buffer.data(), buffer.size());
    of.close();
}
int main() {
    using namespace cbor;
    std::cout << std::is_same<uint8_t, char>::value << std::endl;
    test_libcbor_serializer_map();
//    test_libcbor_serializer_array();
    return 0;
}