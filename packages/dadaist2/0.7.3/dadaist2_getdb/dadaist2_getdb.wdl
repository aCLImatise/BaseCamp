version 1.0

task Dadaist2getdb {
  input {
    Boolean? list
  }
  command <<<
    dadaist2_getdb \
      ~{if (list) then "--list" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dadaist2:0.7.3--0"
  }
  parameter_meta {
    list: ""
  }
  output {
    File out_stdout = stdout()
  }
}