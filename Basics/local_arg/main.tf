resource local_file sample_res {
  filename = "sample_args.txt"
  sensitive_content = "Hello World!"
  file_permission = "0700"
}
