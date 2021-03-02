version 1.0

task EaselFilterMaxid {
  input {
    Boolean? options
  }
  command <<<
    easel filter maxid \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/easel:0.47--h516909a_0"
  }
  parameter_meta {
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}