#WKTAF part 1 (day 1 first exercise)

library(icesTAF)

taf.skeleton()
icesTAF::dir.tree()  #:: dupult kolon letur teg hyggja inn í mappuna

###exercise 1###
data(trees)
trees

draft.data(
  data.files = "trees.csv",
  data.scripts = NULL,
  originator = "Ryan, T. A., Joiner, B. L. and Ryan, B. F. (1976) The Minitab Student Handbook. Duxbury Press.",
  title = "Diameter, Height and Volume for Black Cherry Trees",
  file = TRUE,
  append = FALSE # create a new DATA.bib
)

?trees
taf.bootstrap()

#write.taf(trees, dir = "bootstrap/initial/data")
write.taf(trees, dir = "boot/initial/data")

?write.taf
write.taf(trees, dir = "boot/initial/data")
taf.bootstrap()


data(trees)
data(cars)
# make the directory we want to write to
mkdir("boot/initial/data/my-collection")
# save files there
write.taf(trees, dir = "boot/initial/data/my-collection")
write.taf(cars, dir = "boot/initial/data/my-collection")

draft.data(
  data.files = "my-collection",
  data.scripts = NULL,
  originator = "R datasets package",
  title = "Collection of R data",
  source = "folder",
  file = TRUE,
  append = TRUE # add on to existing data.bib
)

draft.data(
  data.files = "trees.csv",
  data.scripts = NULL,
  originator = "Ryan, T. A., Joiner, B. L. and Ryan, B. F. (1976) The Minitab Student Handbook. Duxbury Press.",
  title = "Diameter, Height and Volume for Black Cherry Trees",
  file = TRUE,
  append = FALSE # create a new DATA.bib
)

taf.boot()

dir.tree()

#####after lunch ######
draft.data(
  data.files = "HadSST.4.0.1.0_median.nc",
  data.scripts = NULL,
  originator = "UK MET office",
  title = "Met Office Hadley Centre observations datasets",
  year = 2022,
  source = "https://www.metoffice.gov.uk/hadobs/hadsst4/data/netcdf/HadSST.4.0.1.0_median.nc",
  file = TRUE,
  append = TRUE
)

taf.boot()

#########adding OSPAR script after running it######
taf.boot()

taf.boot(taf = TRUE) #to use when youre happy with your dataset and its all set

dir.tree()


###############PART 2 #################
####getting assessemnet of SAM.org#######