version 1.0

task ReadFileNames {
  input {
    Boolean inIn
  }
  command <<<
    read_file_names \
      ~{true="-in" false="" inIn}
  >>>
}