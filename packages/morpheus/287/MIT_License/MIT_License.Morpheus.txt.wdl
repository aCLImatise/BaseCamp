version 1.0

task MITLicenseMorpheustxt {
  command <<<
    MIT_License_Morpheus_txt
  >>>
  runtime {
    docker: "quay.io/biocontainers/morpheus:287--0"
  }
  output {
    File out_stdout = stdout()
  }
}