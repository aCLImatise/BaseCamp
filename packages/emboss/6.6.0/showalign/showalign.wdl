version 1.0

task Showalign {
  input {
    Boolean? matrix
    Boolean? refseq
    Boolean? show
    Boolean? order
    Boolean? uppercase
    Boolean? width
    Boolean? margin
    Boolean? html
    Boolean? highlight
    Boolean? plurality
    Boolean? set_case
    Boolean? identity
    String alignment_dot
  }
  command <<<
    showalign \
      ~{alignment_dot} \
      ~{if (matrix) then "-matrix" else ""} \
      ~{if (refseq) then "-refseq" else ""} \
      ~{if (show) then "-show" else ""} \
      ~{if (order) then "-order" else ""} \
      ~{if (uppercase) then "-uppercase" else ""} \
      ~{if (width) then "-width" else ""} \
      ~{if (margin) then "-margin" else ""} \
      ~{if (html) then "-html" else ""} \
      ~{if (highlight) then "-highlight" else ""} \
      ~{if (plurality) then "-plurality" else ""} \
      ~{if (set_case) then "-setcase" else ""} \
      ~{if (identity) then "-identity" else ""}
  >>>
  parameter_meta {
    matrix: "matrix     [EBLOSUM62 for protein, EDNAFULL for DNA]\\nThis is the scoring matrix file used when\\ncomparing sequences. By default it is the\\nfile 'EBLOSUM62' (for proteins) or the file\\n'EDNAFULL' (for nucleic sequences). These\\nfiles are found in the 'data' directory of\\nthe EMBOSS installation."
    refseq: "string     [0] If you give the number in the alignment\\nor the name of a sequence, it will be taken\\nto be the reference sequence. The reference\\nsequence is always shown in full and is the\\none against which all the other sequences\\nare compared. If this is set to 0 then the\\nconsensus sequence will be used as the\\nreference sequence. By default the consensus\\nsequence is used as the reference sequence.\\n(Any string)"
    show: "menu       [N] What to show (Values: A (All of the\\nsequences); I (Identities between the\\nsequences); N (Non-identities between the\\nsequences); S (Similarities between the\\nsequences); D (Dissimilarities between the\\nsequences))"
    order: "menu       [I] Output order of the sequences (Values: I\\n(Input order - no change); A (Alphabetical\\norder of the names); S (Similarity to the\\nreference sequence))"
    uppercase: "range      [If this is left blank, then the sequence\\ncase is left alone.] Regions to put in\\nuppercase.\\nIf this is left blank, then the sequence\\ncase is left alone.\\nA set of regions is specified by a set of\\npairs of positions.\\nThe positions are integers.\\nThey are separated by any non-digit,\\nnon-alpha character.\\nExamples of region specifications are:\\n24-45, 56-78\\n1:45, 67=99;765..888\\n1,5,8,10,23,45,57,99"
    width: "integer    [60] Width of sequence to display (Integer 1\\nor more)"
    margin: "integer    [-1] This sets the length of the left-hand\\nmargin for sequence names. If the margin is\\nset at 0 then no margin and no names are\\ndisplayed. If the margin is set to a value\\nthat is less than the length of a sequence\\nname then the sequence name is displayed\\ntruncated to the length of the margin. If\\nthe margin is set to -1 then the minimum\\nmargin width that will allow all the\\nsequence names to be displayed in full plus\\na space at the end of the name will\\nautomatically be selected. (Integer -1 or\\nmore)"
    html: "boolean    [N] Use HTML formatting"
    highlight: "range      [(full sequence)] Regions to colour if\\nformatting for HTML.\\nIf this is left blank, then the sequence is\\nleft alone.\\nA set of regions is specified by a set of\\npairs of positions.\\nThe positions are integers.\\nThey are followed by any valid HTML font\\ncolour.\\nExamples of region specifications are:\\n24-45 blue 56-78 orange\\n1-100 green 120-156 red\\nA file of ranges to colour (one range per\\nline) can be specified as '@filename'."
    plurality: "float      [50.0] Set a cut-off for the % of positive\\nscoring matches below which there is no\\nconsensus. The default plurality is taken as\\n50% of the total weight of all the\\nsequences in the alignment. (Number from\\n0.000 to 100.000)"
    set_case: "float      [@( $(sequence.totweight) / 2)] Sets the\\nthreshold for the scores of the positive\\nmatches above which the consensus is in\\nupper-case and below which the consensus is\\nin lower-case. By default this is set to be\\nhalf of the (weight-adjusted) number of\\nsequences in the alignment. (Any numeric\\nvalue)"
    identity: "float      [0.0] Provides the facility of setting the\\nrequired number of identities at a position\\nfor it to give a consensus. Therefore, if\\nthis is set to 100% only columns of\\nidentities contribute to the consensus.\\n(Number from 0.000 to 100.000)"
    alignment_dot: "-[no]ruler          boolean    [Y] If this option is true then a ruler line"
  }
  output {
    File out_stdout = stdout()
  }
}