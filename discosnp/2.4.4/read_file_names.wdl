version 1.0

task ReadFileNames {
  input {
    Boolean? in
  }
  command <<<
    read_file_names \
      ~{true="-in" false="" in}
  >>>
  parameter_meta {
    in: "(1 arg) :    bank input"
  }
}