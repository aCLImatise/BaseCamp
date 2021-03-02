version 1.0

task Fuzznuc {
  input {
    Boolean? pattern
    Boolean? complement
  }
  command <<<
    fuzznuc \
      ~{if (pattern) then "-pattern" else ""} \
      ~{if (complement) then "-complement" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    pattern: "pattern    The standard IUPAC one-letter codes for the\\nnucleotides are used.\\nThe symbol 'n' is used for a position where\\nany nucleotide is accepted.\\nAmbiguities are indicated by listing the\\nacceptable nucleotides for a given position,\\nbetween square parentheses '[ ]'. For\\nexample: [ACG] stands for A or C or G.\\nAmbiguities are also indicated by listing\\nbetween a pair of curly brackets '{ }' the\\nnucleotides that are not accepted at a given\\nposition. For example: {AG} stands for any\\nnucleotides except A and G.\\nEach element in a pattern is separated from\\nits neighbor by a '-'. (Optional in\\nfuzznuc).\\nRepetition of an element of the pattern can\\nbe indicated by following that element with\\na numerical value or a numerical range\\nbetween parenthesis. Examples: N(3)\\ncorresponds to N-N-N, N(2,4) corresponds to\\nN-N or N-N-N or N-N-N-N.\\nWhen a pattern is restricted to either the\\n5' or 3' end of a sequence, that pattern\\neither starts with a '<' symbol or\\nrespectively ends with a '>' symbol.\\nA period ends the pattern. (Optional in\\nfuzznuc).\\nFor example, [CG](5)TG{A}N(1,5)C"
    complement: "boolean    [N] Search complementary strand"
  }
  output {
    File out_stdout = stdout()
  }
}