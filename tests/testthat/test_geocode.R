test_that("Test whether function 'geocode' works", {
        expect_equal(geocode("Steinstrasse 73, 8003, Zürich")$lat, 47.3660124)
        expect_equal(geocode("Steinstrasse 73, 8003, Zürich")$lng, 8.5215106)
})
