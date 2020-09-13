version 1.0

task PrepareSignatureplorig {
  command <<<
    prepare_signature_pl_orig
  >>>
  output {
    File out_stdout = stdout()
  }
}