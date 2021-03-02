version 1.0

task Mergestatetrees {
  input {
    String state_tree_file_n
  }
  command <<<
    mergestatetrees \
      ~{state_tree_file_n}
  >>>
  runtime {
    docker: "quay.io/biocontainers/decifer:0.0.2--py27ha58320b_0"
  }
  parameter_meta {
    state_tree_file_n: ""
  }
  output {
    File out_stdout = stdout()
  }
}