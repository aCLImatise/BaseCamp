version 1.0

task InteropImagingTable {
  command <<<
    interop_imaging_table
  >>>
  output {
    File out_stdout = stdout()
  }
}