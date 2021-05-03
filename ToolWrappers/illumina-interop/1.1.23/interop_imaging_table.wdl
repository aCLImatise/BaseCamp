version 1.0

task InteropImagingTable {
  command <<<
    interop_imaging_table
  >>>
  runtime {
    docker: "quay.io/biocontainers/illumina-interop:1.1.23--h1b792b2_0"
  }
  output {
    File out_stdout = stdout()
  }
}