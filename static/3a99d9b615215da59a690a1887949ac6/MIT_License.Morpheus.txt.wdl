version 1.0

task MITLicenseMorpheustxt {
  command <<<
    MIT_License_Morpheus_txt
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}