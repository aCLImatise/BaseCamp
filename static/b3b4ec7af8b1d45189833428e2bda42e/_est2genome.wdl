version 1.0

task Est2genome {
  input {
    Boolean? match
    Boolean? mismatch
    Boolean? gap_penalty
    Boolean? intron_penalty
    Boolean? splice_penalty
    Boolean? min_score
    Boolean? reverse
    Boolean? mode
    Boolean? space
    Boolean? shuffle
    Boolean? seed
    Boolean? align
    Boolean? width
  }
  command <<<
    _est2genome \
      ~{if (match) then "-match" else ""} \
      ~{if (mismatch) then "-mismatch" else ""} \
      ~{if (gap_penalty) then "-gappenalty" else ""} \
      ~{if (intron_penalty) then "-intronpenalty" else ""} \
      ~{if (splice_penalty) then "-splicepenalty" else ""} \
      ~{if (min_score) then "-minscore" else ""} \
      ~{if (reverse) then "-reverse" else ""} \
      ~{if (mode) then "-mode" else ""} \
      ~{if (space) then "-space" else ""} \
      ~{if (shuffle) then "-shuffle" else ""} \
      ~{if (seed) then "-seed" else ""} \
      ~{if (align) then "-align" else ""} \
      ~{if (width) then "-width" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    match: "integer    [1] Score for matching two bases (Any\\ninteger value)"
    mismatch: "integer    [1] Cost for mismatching two bases (Any\\ninteger value)"
    gap_penalty: "integer    [2] Cost for deleting a single base in\\neither sequence, excluding introns (Any\\ninteger value)"
    intron_penalty: "integer    [40] Cost for an intron, independent of\\nlength. (Any integer value)"
    splice_penalty: "integer    [20] Cost for an intron, independent of\\nlength and starting/ending on donor-acceptor\\nsites (Any integer value)"
    min_score: "integer    [30] Exclude alignments with scores below\\nthis threshold score. (Any integer value)"
    reverse: "boolean    Reverse the orientation of the EST sequence"
    mode: "menu       [both] This determines the comparison mode.\\nThe default value is 'both', in which case\\nboth strands of the est are compared\\nassuming a forward gene direction (ie GT/AG\\nsplice sites), and the best comparison\\nredone assuming a reversed (CT/AC) gene\\nsplicing direction. The other allowed modes\\nare 'forward', when just the forward strand\\nis searched, and 'reverse', ditto for the\\nreverse strand. (Values: both (Both\\nstrands); forward (Forward strand only);\\nreverse (Reverse strand only))"
    space: "float      [10.0] For linear-space recursion. If\\nproduct of sequence lengths divided by 4\\nexceeds this then a divide-and-conquer\\nstrategy is used to control the memory\\nrequirements. In this way very long\\nsequences can be aligned.\\nIf you have a machine with plenty of memory\\nyou can raise this parameter (but do not\\nexceed the machine's physical RAM) (Any\\nnumeric value)"
    shuffle: "integer    [0] Shuffle (Any integer value)"
    seed: "integer    [20825] Random number seed (Any integer\\nvalue)"
    align: "boolean    Show the alignment. The alignment includes\\nthe first and last 5 bases of each intron,\\ntogether with the intron width. The\\ndirection of splicing is indicated by angle\\nbrackets (forward or reverse) or ????\\n(unknown)."
    width: "integer    [50] Alignment width (Any integer value)"
  }
  output {
    File out_stdout = stdout()
  }
}