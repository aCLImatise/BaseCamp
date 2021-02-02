version 1.0

task MegalodonExtrasVariants {
  command <<<
    megalodon_extras variants
  >>>
  output {
    File out_stdout = stdout()
  }
}