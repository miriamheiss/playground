set.seed(123)
petri <- canvas_petri(colors = c("powderblue", "white"))

set.seed(789) 
petri2 <- canvas_petri(colors = colorPalette("origami"))

set.seed(456)
rainbow <- canvas_function(colors = c("brown2", "chocolate2", "goldenrod2", "olivedrab3", "cadetblue4", "darkorchid1"), polar = TRUE)

set.seed(0)
flame <- canvas_flame(colors = colorPalette("vrolik4"))

set.seed(1)
flow <- canvas_flow(colors = c("#f9cd0b", "#d7d8db", "#0f3731", "#11284d", "#c99f7d"), background = "#ffffff", lines = "2000")

flow <- canvas_function(colors = c("#f9cd0b", "#d7d8db", "#0f3731", "#11284d", "#c99f7d"), background = "#ffffff", lines = "2000")

set.seed(2)
grey_background <- canvas_flow(colors = c("#f9cd0b", "#d7d8db", "#0f3731", "#11284d", "#c99f7d"), background = "#cacbd0")

set.seed(3)
flow2 <- canvas_flow(colors = c("#f9cd0b", "#d7d8db", "#0f3731", "#11284d", "#c99f7d"), background = "#cacbd0")

set.seed(8)
flow3 <- canvas_flow(colors = c("#f9cd0b", "#d7d8db", "#0f3731", "#11284d", "#c99f7d"), background = "#cacbd0")

set.seed(7)
thing <- canvas_flame(colors = c("#f9cd0b", "#d7d8db", "#0f3731", "#11284d", "#c99f7d"), background = "#cacbd0")
