version 1.0

task Netcdfmetadatainfo {
  command <<<
    netcdf_metadata_info
  >>>
  output {
    File out_stdout = stdout()
  }
}