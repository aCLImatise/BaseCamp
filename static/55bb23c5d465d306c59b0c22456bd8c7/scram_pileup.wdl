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
    docker: "None"
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