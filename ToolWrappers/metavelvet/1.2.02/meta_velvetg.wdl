version 1.0

task Metavelvetg {
  command <<<
    meta_velvetg
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}