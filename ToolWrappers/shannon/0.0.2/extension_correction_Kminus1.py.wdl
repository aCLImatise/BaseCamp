version 1.0

task ExtensionCorrectionKminus1py {
  command <<<
    extension_correction_Kminus1_py
  >>>
  output {
    File out_stdout = stdout()
  }
}