version 1.0

task HYPHYMPIRed {
  input {
    String branch_under_condition
    String to
    String return_treestring
  }
  command <<<
    HYPHYMPI red \
      ~{branch_under_condition} \
      ~{to} \
      ~{return_treestring}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hyphy:2.5.31--h48c199c_0"
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