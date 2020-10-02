version 1.0

task Tophatfusionpost {
  command <<<
    tophat_fusion_post
  >>>
  output {
    File out_stdout = stdout()
  }
}