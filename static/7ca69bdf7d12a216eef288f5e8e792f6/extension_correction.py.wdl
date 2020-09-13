version 1.0

task ExtensionCorrectionpy {
  command <<<
    extension_correction_py
  >>>
  output {
    File out_stdout = stdout()
  }
}