version 1.0

task ScramPileup {
  input {
    Boolean? gap_pileup_format
    Boolean? depth_format
    File filename_dot
  }
  command <<<
    scram_pileup \
      ~{filename_dot} \
      ~{if (gap_pileup_format) then "-5" else ""} \
      ~{if (depth_format) then "-d" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/staden_io_lib:1.14.13--h9dace67_0"
  }
  parameter_meta {
    gap_pileup_format: "Gap5 pileup format."
    depth_format: "Depth format."
    filename_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}