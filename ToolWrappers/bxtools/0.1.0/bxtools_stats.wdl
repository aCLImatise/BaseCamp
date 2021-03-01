version 1.0

task BxtoolsStats {
  input {
    Boolean? verbose
    Boolean? tag
    String bx_tools
    String stat
    String bam_slash_sam_slash_cram
  }
  command <<<
    bxtools stats \
      ~{bx_tools} \
      ~{stat} \
      ~{bam_slash_sam_slash_cram} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (tag) then "--tag" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Set verbose output"
    tag: "Collect stats by a tag other than BX (e.g. MI)"
    bx_tools: ""
    stat: ""
    bam_slash_sam_slash_cram: ""
  }
  output {
    File out_stdout = stdout()
  }
}