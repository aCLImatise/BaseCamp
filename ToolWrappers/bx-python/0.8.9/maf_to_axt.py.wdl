version 1.0

task MafToAxtpy {
  command <<<
    maf_to_axt_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}