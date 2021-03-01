version 1.0

task PhysionetUtilspy {
  command <<<
    physionet_utils_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}