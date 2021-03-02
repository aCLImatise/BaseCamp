version 1.0

task HmmconvertHmmfile {
  input {
    Boolean? options
  }
  command <<<
    hmmconvert hmmfile \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}