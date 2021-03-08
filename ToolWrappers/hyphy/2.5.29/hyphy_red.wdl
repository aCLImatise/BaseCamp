version 1.0

task HyphyRed {
  input {
    String branch_under_condition
    String to
    String return_treestring
  }
  command <<<
    hyphy red \
      ~{branch_under_condition} \
      ~{to} \
      ~{return_treestring}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hyphy:2.5.29--h3db2f75_0"
  }
  parameter_meta {
    branch_under_condition: "Branch under condition 'doLengths<0.5'"
    to: "return RerootTree(treeString,0);"
    return_treestring: "return treeString;"
  }
  output {
    File out_stdout = stdout()
  }
}