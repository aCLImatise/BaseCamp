version 1.0

task Mglobconformer {
  command <<<
    mglobconformer
  >>>
  output {
    File out_stdout = stdout()
  }
}