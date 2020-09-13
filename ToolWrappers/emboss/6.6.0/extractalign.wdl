version 1.0

task Extractalign {
  input {
    Boolean? regions
  }
  command <<<
    extractalign \
      ~{if (regions) then "-regions" else ""}
  >>>
  parameter_meta {
    regions: "range      [Whole sequence] Regions to extract.\\nA set of regions is specified by a set of\\npairs of positions.\\nThe positions are integers.\\nThey are separated by any non-digit,\\nnon-alpha character.\\nExamples of region specifications are:\\n24-45, 56-78\\n1:45, 67=99;765..888\\n1,5,8,10,23,45,57,99"
  }
  output {
    File out_stdout = stdout()
  }
}