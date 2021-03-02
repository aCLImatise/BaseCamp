version 1.0

task ExtensionCorrectionpy {
  command <<<
    extension_correction_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}