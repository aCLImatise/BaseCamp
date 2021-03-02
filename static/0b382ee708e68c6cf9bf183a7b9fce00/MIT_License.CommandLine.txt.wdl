version 1.0

task MITLicenseCommandLinetxt {
  command <<<
    MIT_License_CommandLine_txt
  >>>
  runtime {
    docker: "quay.io/biocontainers/morpheus:287--0"
  }
  output {
    File out_stdout = stdout()
  }
}