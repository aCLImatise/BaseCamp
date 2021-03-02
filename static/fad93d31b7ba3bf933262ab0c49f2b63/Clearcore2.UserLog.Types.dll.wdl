version 1.0

task Clearcore2UserLogTypesdll {
  command <<<
    Clearcore2_UserLog_Types_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}