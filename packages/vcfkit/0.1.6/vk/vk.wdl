version 1.0

task Vk {
  command <<<
    vk
  >>>
  output {
    File out_stdout = stdout()
  }
}