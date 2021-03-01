version 1.0

task InteropImagingTable {
  command <<<
    interop_imaging_table
  >>>
  runtime {
    docker: "quay.io/biocontainers/illumina-interop:1.1.21--he1b5a44_0"
  }
  output {
    File out_stdout = stdout()
  }
}