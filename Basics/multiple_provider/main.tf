resource local_file name {
  content = "sample.txt"
  filename = "sample.txt"
}

resource random_string name {
  length  = 10
}
