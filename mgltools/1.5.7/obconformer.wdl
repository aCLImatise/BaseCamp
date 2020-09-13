version 1.0

task Obconformer {
  command <<<
    obconformer
  >>>
  output {
    File out_stdout = stdout()
  }
}