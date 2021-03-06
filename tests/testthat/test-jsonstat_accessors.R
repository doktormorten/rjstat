context("jsonstat accessors")

test_that("id", {
    x <- as.jsonstat("oecd.json")
    expect_equal(id(x), c("concept", "area", "year"))
    expect_error(id(x) <- "Hej")
    id(x) <- c("1", "2", "3")
    expect_equal(id(x),  c("1", "2", "3"))
})

test_that("status", {
    x <- as.jsonstat("oecd.json")
    expect_equal(status(x)[[1]], "e")
    expect_equal(names(status(x))[1], "10")
    expect_error(status(x) <- 5)
    expect_error(status(x) <- c("E", "D"))
    expect_silent(status(x) <- "e")
    expect_equal(status(x), "e")
    vals <- list("32"="e", "42"="g", "88"="f")
    expect_silent(status(x) <- vals)
    expect_equal(status(x), vals)
    names(vals) <- NULL
    expect_error(status(x) <- vals)
    expect_silent(status(x) <- rep("e", length(as.vector(x))))
})

