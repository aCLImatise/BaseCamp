version 1.0

task GetVariantspy {
  command <<<
    GetVariants_py
  >>>
  output {
    File out_stdout = stdout()
  }
}