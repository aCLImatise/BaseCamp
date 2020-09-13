version 1.0

task VariantCaller {
  command <<<
    variantCaller
  >>>
  output {
    File out_stdout = stdout()
  }
}