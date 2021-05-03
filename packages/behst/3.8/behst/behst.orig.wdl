version 1.0

task Behstorig {
  command <<<
    behst_orig
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}