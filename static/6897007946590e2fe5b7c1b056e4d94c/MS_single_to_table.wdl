version 1.0

task MSsingletotable {
  command <<<
    MS_single_to_table
  >>>
  runtime {
    docker: "quay.io/biocontainers/dms:1.1--hc9558a2_0"
  }
  output {
    File out_stdout = stdout()
  }
}