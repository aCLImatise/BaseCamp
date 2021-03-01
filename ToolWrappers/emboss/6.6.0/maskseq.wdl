version 1.0

task Maskseq {
  input {
    Boolean? regions
    Boolean? to_lower
  }
  command <<<
    maskseq \
      ~{if (regions) then "-regions" else ""} \
      ~{if (to_lower) then "-tolower" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    regions: "range      [None] Regions to mask.\\nA set of regions is specified by a set of\\npairs of positions.\\nThe positions are integers.\\nThey are separated by any non-digit,\\nnon-alpha character.\\nExamples of region specifications are:\\n24-45, 56-78\\n1:45, 67=99;765..888\\n1,5,8,10,23,45,57,99"
    to_lower: "toggle     [N] The region can be 'masked' by converting\\nthe sequence characters to lower-case, some\\nnon-EMBOSS programs e.g. fasta can\\ninterpret this as a masked region. The\\nsequence is unchanged apart from the case\\nchange. You might like to ensure that the\\nwhole sequence is in upper-case before\\nmasking the specified regions to lower-case\\nby using the '-supper' flag."
  }
  output {
    File out_stdout = stdout()
  }
}