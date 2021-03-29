version 1.0

task Dadaist2getdbPrinted {
  input {
    Boolean? list
    Int dadaist_two_get_db
  }
  command <<<
    dadaist2_getdb printed_ \
      ~{dadaist_two_get_db} \
      ~{if (list) then "--list" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dadaist2:0.7.5--0"
  }
  parameter_meta {
    list: ""
    dadaist_two_get_db: ""
  }
  output {
    File out_stdout = stdout()
  }
}