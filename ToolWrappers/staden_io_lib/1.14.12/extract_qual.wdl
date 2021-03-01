version 1.0

task ExtractQual {
  input {
    Boolean? r
  }
  command <<<
    extract_qual \
      ~{if (r) then "-r" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    r: ""
  }
  output {
    File out_stdout = stdout()
  }
}