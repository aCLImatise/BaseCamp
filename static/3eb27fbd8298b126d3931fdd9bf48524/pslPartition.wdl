version 1.0

task PslPartition {
  input {
    Int? out_levels
    Int? part_size
    Boolean? drop_contained
    String psl_file
  }
  command <<<
    pslPartition \
      ~{psl_file} \
      ~{if defined(out_levels) then ("-outLevels " +  '"' + out_levels + '"') else ""} \
      ~{if defined(part_size) then ("-partSize " +  '"' + part_size + '"') else ""} \
      ~{if (drop_contained) then "-dropContained" else ""}
  >>>
  parameter_meta {
    out_levels: "- number of output subdirectory levels.  0 puts all files\\ndirectly in outDir, 2, will create files in the form outDir/0/0/00.psl"
    part_size: "- will combine non-overlapping partitions, while attempting\\nto keep them under this number of PSLs.  This reduces the number of\\nfiles that are created while ensuring that there are no overlaps\\nbetween any two PSL files.  A value of 0 creates a PSL file per set of\\noverlapping PSLs."
    drop_contained: "- drop PSLs that are completely contained in a block of\\nanother PSL.\\n"
    psl_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}