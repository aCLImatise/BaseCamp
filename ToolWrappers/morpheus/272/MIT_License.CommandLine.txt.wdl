version 1.0

task MITLicenseCommandLinetxt {
  command <<<
    MIT_License_CommandLine_txt
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}