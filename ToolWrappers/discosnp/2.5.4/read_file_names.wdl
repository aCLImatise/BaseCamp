version 1.0

task ReadFileNames {
  input {
    Boolean? in
  }
  command <<<
    read_file_names \
      ~{if (in) then "-in" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/discosnp:2.5.4--h8b12597_0"
  }
  parameter_meta {
    in: "(1 arg) :    bank input"
  }
  output {
    File out_stdout = stdout()
  }
}