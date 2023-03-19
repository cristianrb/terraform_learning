resource local_file name1 {
  filename = "sample.txt"
  content = "Random string from RP: ${random_string.name2.id}"
  depends_on = [random_string.name2]
}

resource random_string name2 {
  length  = 10
}
