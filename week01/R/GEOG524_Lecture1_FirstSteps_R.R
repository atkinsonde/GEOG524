# GEOG 524 — Lecture 1: first steps with R
# Purpose: inspect a small text file, read it into a data frame, and plot it.
#
# Put example_observations.txt in the working directory, or edit `filename`
# to point to the file's location.

# 1. Where is R looking for files?
getwd()
list.files()

# 2. Choose ONE file location approach.
# Option A: local RStudio/Jupyter — file in the working directory:
filename <- "example_observations.txt"

# Option B: file in a subfolder:
# filename <- "data/example_observations.txt"

# Option C: Google Colab with an R runtime, after mounting Drive:
# filename <- "/content/drive/MyDrive/GEOG524/example_observations.txt"

# 3. Check that the file exists and inspect its raw text.
file.exists(filename)
file.info(filename)$size
readLines(filename, n = 12)

# 4. Read the observations.
# comment.char = "#" skips the explanatory comment lines.
observations <- read.csv(
  filename,
  comment.char = "#",
  stringsAsFactors = FALSE
)
observations$date <- as.Date(observations$date)

# 5. Inspect the data structure.
dim(observations)
str(observations)
summary(observations)

# 6. A simple plot using base R.
station_names <- unique(observations$station)
plot(
  NA,
  xlim = range(observations$date),
  ylim = range(observations$temperature_C),
  xlab = "Date",
  ylab = "Temperature (°C)",
  main = "Illustrative daily temperatures"
)
for (station_name in station_names) {
  this_station <- observations[observations$station == station_name, ]
  lines(this_station$date, this_station$temperature_C, type = "b", pch = 16)
}
legend("topleft", legend = station_names, lty = 1, pch = 16, bty = "n")

# 7. Discussion prompts:
# - What if the file were tab-delimited?
# - What if there were no header row?
# - What if missing values were coded as -999?
# - What if temperature were in Fahrenheit?
