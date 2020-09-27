version 1.0

task ReadFileNames {
  input {
    Boolean? in
  }
  command <<<
    read_file_names \
      ~{if (in) then "-in" else ""}
  >>>
  parameter_meta {
    in: "(1 arg) :    bank input"
  }
  output {
    File out_stdout = stdout()
  }
}