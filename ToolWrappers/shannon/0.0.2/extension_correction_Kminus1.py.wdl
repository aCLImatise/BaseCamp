version 1.0

task ExtensionCorrectionKminus1py {
  command <<<
    extension_correction_Kminus1_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}