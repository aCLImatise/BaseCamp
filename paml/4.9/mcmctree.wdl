version 1.0

task Mcmctree {
  command <<<
    mcmctree
  >>>
  output {
    File out_stdout = stdout()
  }
}