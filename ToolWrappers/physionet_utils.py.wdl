version 1.0

task PhysionetUtilspy {
  command <<<
    physionet_utils_py
  >>>
  output {
    File out_stdout = stdout()
  }
}