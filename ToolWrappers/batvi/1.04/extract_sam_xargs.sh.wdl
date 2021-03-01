version 1.0

task ExtractSamXargssh {
  command <<<
    extract_sam_xargs_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}