version 1.0

task SqtRandomseq {
  input {
    Int? minimum_length
  }
  command <<<
    sqt randomseq \
      ~{if defined(minimum_length) then ("--minimum-length " +  '"' + minimum_length + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    minimum_length: ""
  }
  output {
    File out_stdout = stdout()
  }
}