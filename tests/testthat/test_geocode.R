test_that("Test whether function 'geocode' works with single address", {
        expect_equal(geocode("Rosenbergstrasse 59, 9001 St.Gallen")$lat, 47.4229917)
        expect_equal(geocode("Rosenbergstrasse 59, 9001 St.Gallen")$lng, 9.3675559)
})

test_that("Test whether function 'geocode' works with multiple addresses", {
        expect_equal(geocode(c("Rosenbergstrasse 59, 9001 St.Gallen", "Bahnhofplatz, 9000 St.Gallen"))$lat, c(47.4229917, 47.4226419))
        expect_equal(geocode(c("Rosenbergstrasse 59, 9001 St.Gallen", "Bahnhofplatz, 9000 St.Gallen"))$lng, c(9.3675559, 9.3693916))
})
