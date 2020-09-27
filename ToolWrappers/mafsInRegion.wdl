version 1.0

task MafsInRegion {
  input {
    Boolean? outdir
    Boolean? keep_initial_gaps
    String regions_dot_bed
    String out_dot_maf_vertical_line_outdir
    String in_dot_maf
  }
  command <<<
    mafsInRegion \
      ~{regions_dot_bed} \
      ~{out_dot_maf_vertical_line_outdir} \
      ~{in_dot_maf} \
      ~{if (outdir) then "-outDir" else ""} \
      ~{if (keep_initial_gaps) then "-keepInitialGaps" else ""}
  >>>
  parameter_meta {
    outdir: "- output separate files named by bed name field to outDir"
    keep_initial_gaps: "- keep alignment columns at the beginning and of a block that are gapped in all species"
    regions_dot_bed: ""
    out_dot_maf_vertical_line_outdir: ""
    in_dot_maf: ""
  }
  output {
    File out_stdout = stdout()
  }
}