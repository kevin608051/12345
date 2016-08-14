timeout <- function() {
  for (kk in 1:10) {
    print(kk);
    Sys.sleep(1);
  }
}

print("end")