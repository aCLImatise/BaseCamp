version 1.0

task PrepareSignatureplorig {
  command <<<
    prepare_signature_pl_orig
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}