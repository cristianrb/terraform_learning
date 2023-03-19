data local_file foo {
  filename = "sample.1.txt"
}

output name2 {
  value = data.local_file.foo.content
}
