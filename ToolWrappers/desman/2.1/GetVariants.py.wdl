version 1.0

task GetVariantspy {
  command <<<
    GetVariants_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}