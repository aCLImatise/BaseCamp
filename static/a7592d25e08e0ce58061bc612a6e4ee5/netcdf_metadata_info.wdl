version 1.0

task Netcdfmetadatainfo {
  command <<<
    netcdf_metadata_info
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}