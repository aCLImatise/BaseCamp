version 1.0

task Extractseq {
  input {
    Boolean? regions
    Boolean? separate
  }
  command <<<
    _extractseq \
      ~{if (regions) then "-regions" else ""} \
      ~{if (separate) then "-separate" else ""}
  >>>
  parameter_meta {
    regions: "range      [Whole sequence] Regions to extract.\\nA set of regions is specified by a set of\\npairs of positions.\\nThe positions are integers.\\nThey are separated by any non-digit,\\nnon-alpha character.\\nExamples of region specifications are:\\n24-45, 56-78\\n1:45, 67=99;765..888\\n1,5,8,10,23,45,57,99"
    separate: "boolean    [N] If this is set true then each specified\\nregion is written out as a separate\\nsequence. The name of the sequence is\\ncreated from the name of the original\\nsequence with the start and end positions of\\nthe range appended with underscore\\ncharacters between them, eg: XYZ region 2 to\\n34 is written as: XYZ_2_34"
  }
  output {
    File out_stdout = stdout()
  }
}