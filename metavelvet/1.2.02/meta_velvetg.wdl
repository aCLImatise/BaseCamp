version 1.0

task Metavelvetg {
  command <<<
    meta_velvetg
  >>>
  output {
    File out_stdout = stdout()
  }
}