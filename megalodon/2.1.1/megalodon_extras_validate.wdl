version 1.0

task MegalodonExtrasValidate {
  command <<<
    megalodon_extras validate
  >>>
  output {
    File out_stdout = stdout()
  }
}