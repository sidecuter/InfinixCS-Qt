#include <doctest/doctest.h>
#include <infinix/server.h>
#include <infinix/version.h>

#include <string>

TEST_CASE("Infinix server version") {
  static_assert(std::string_view(INFINIX_VERSION) == std::string_view("0.0.1"));
  CHECK(std::string(INFINIX_VERSION) == std::string("0.0.1"));
}