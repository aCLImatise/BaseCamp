version 1.0

task CmconvertCmfile {
  input {
    Boolean? options
  }
  command <<<
    cmconvert cmfile \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/infernal:1.1.3--h516909a_0"
  }
  parameter_meta {
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}