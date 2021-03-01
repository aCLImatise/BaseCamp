version 1.0

task VariantCaller {
  command <<<
    variantCaller
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}