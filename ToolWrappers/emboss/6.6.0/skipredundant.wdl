version 1.0

task Skipredundant {
  input {
    Boolean? mode
    Boolean? gap_open
    Boolean? gap_extend
    Boolean? data_file
    Boolean? feature
  }
  command <<<
    skipredundant \
      ~{if (mode) then "-mode" else ""} \
      ~{if (gap_open) then "-gapopen" else ""} \
      ~{if (gap_extend) then "-gapextend" else ""} \
      ~{if (data_file) then "-datafile" else ""} \
      ~{if (feature) then "-feature" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mode: "menu       [1] This option specifies whether to remove\\nredundancy at a single threshold percentage\\nsequence similarity or remove redundancy\\noutside a range of acceptable threshold\\npercentage similarity. All permutations of\\npair-wise sequence alignments are calculated\\nfor each set of input sequences in turn\\nusing the EMBOSS implementation of the\\nNeedleman and Wunsch global alignment\\nalgorithm. Redundant sequences are removed\\nin one of two modes as follows: (i) If a\\npair of proteins achieve greater than a\\nthreshold percentage sequence similarity\\n(specified by the user) the shortest\\nsequence is discarded. (ii) If a pair of\\nproteins have a percentage sequence\\nsimilarity that lies outside an acceptable\\nrange (specified by the user) the shortest\\nsequence is discarded. (Values: 1 (Single\\nthreshold percentage sequence similarity); 2\\n(Outside a range of acceptable threshold\\npercentage similarities))"
    gap_open: "float      [10.0 for any sequence] The gap open penalty\\nis the score taken away when a gap is\\ncreated. The best value depends on the\\nchoice of comparison matrix. The default\\nvalue assumes you are using the EBLOSUM62\\nmatrix for protein sequences, and the\\nEDNAFULL matrix for nucleotide sequences.\\n(Floating point number from 1.0 to 100.0)"
    gap_extend: "float      [0.5 for any sequence] The gap extension,\\npenalty is added to the standard gap penalty\\nfor each base or residue in the gap. This\\nis how long gaps are penalized. Usually you\\nwill expect a few long gaps rather than many\\nshort gaps, so the gap extension penalty\\nshould be lower than the gap penalty. An\\nexception is where one or both sequences are\\nsingle reads with possible sequencing\\nerrors in which case you would expect many\\nsingle base gaps. You can get this result by\\nsetting the gap open penalty to zero (or\\nvery low) and using the gap extension\\npenalty to control gap scoring. (Floating\\npoint number from 0.0 to 10.0)"
    data_file: "matrixf    [EBLOSUM62 for protein, EDNAFULL for DNA]\\nThis is the scoring matrix file used when\\ncomparing sequences. By default it is the\\nfile 'EBLOSUM62' (for proteins) or the file\\n'EDNAFULL' (for nucleic sequences). These\\nfiles are found in the 'data' directory of\\nthe EMBOSS installation."
    feature: "toggle     Sequence feature information will be\\nretained if this option is set."
  }
  output {
    File out_stdout = stdout()
  }
}