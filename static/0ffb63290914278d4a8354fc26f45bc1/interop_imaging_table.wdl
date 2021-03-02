version 1.0

task InteropImagingTable {
  command <<<
    interop_imaging_table
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}