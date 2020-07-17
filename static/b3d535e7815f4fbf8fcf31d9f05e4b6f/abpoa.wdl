version 1.0

task Abpoa {
  input {
    Int? aln_mode
    Boolean? match
    Int? mismatch
    Int? gap_open
    Boolean? gap_ext
    Boolean? extra_b
    Boolean? extra_f
    Boolean? in_list
    Boolean? file_ouput_file
    Boolean? result
    Boolean? out_pog
    Int? cons_alg
    Boolean? diploid
    Float? min_freq
    String in_dot_f_a_slash_fq
  }
  command <<<
    abpoa \
      ~{in_dot_f_a_slash_fq} \
      ~{if defined(aln_mode) then ("--aln-mode " +  '"' + aln_mode + '"') else ""} \
      ~{true="--match" false="" match} \
      ~{if defined(mismatch) then ("--mismatch " +  '"' + mismatch + '"') else ""} \
      ~{if defined(gap_open) then ("--gap-open " +  '"' + gap_open + '"') else ""} \
      ~{true="--gap-ext" false="" gap_ext} \
      ~{true="--extra-b" false="" extra_b} \
      ~{true="--extra-f" false="" extra_f} \
      ~{true="--in-list" false="" in_list} \
      ~{true="--output" false="" file_ouput_file} \
      ~{true="--result" false="" result} \
      ~{true="--out-pog" false="" out_pog} \
      ~{if defined(cons_alg) then ("--cons-alg " +  '"' + cons_alg + '"') else ""} \
      ~{true="--diploid" false="" diploid} \
      ~{if defined(min_freq) then ("--min-freq " +  '"' + min_freq + '"') else ""}
  >>>
  parameter_meta {
    aln_mode: "alignment mode [0] 0: global, 1: local, 2: extension"
    match: "INT       match score [2]"
    mismatch: "mismatch penalty [4]"
    gap_open: "(,INT) gap opening penalty (O1,O2) [4,24]"
    gap_ext: "INT(,INT) gap extension penalty (E1,E2) [2,1] abPOA provides three gap penalty modes, cost of a g-long gap: - convex (default): min{O1+g*E1, O2+g*E2} - affine (set O2 as 0): O1+g*E1 - linear (set O1 as 0): g*E1"
    extra_b: "INT       first adaptive banding parameter [10] set b as < 0 to disable adaptive banded DP"
    extra_f: "FLOAT     second adaptive banding parameter [0.01] the number of extra bases added on both sites of the band is b+f*L, where L is the length of the aligned sequence"
    in_list: "input file is a list of sequence file names [False] each line is one sequence file containing a set of sequences which will be aligned by abPOA to generate a consensus sequence"
    file_ouput_file: "FILE      ouput to FILE [stdout]"
    result: "INT       output result mode [0] - 0: consensus (FASTA format) - 1: MSA (PIR format) - 2: both 0 & 1"
    out_pog: "FILE      dump final alignment graph to FILE (.pdf/.png) [Null]"
    cons_alg: "algorithm to use for consensus calling [0] - 0: heaviest bundling - 1: heaviest in column"
    diploid: "input data is diploid [False] -a/--cons-alg will be set as 1 when input is diploid and at most two consensus sequences will be generated"
    min_freq: "min frequency of each consensus for diploid input [0.30]"
    in_dot_f_a_slash_fq: ""
  }
}