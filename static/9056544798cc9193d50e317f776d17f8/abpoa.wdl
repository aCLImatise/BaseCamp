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
      ~{if (match) then "--match" else ""} \
      ~{if defined(mismatch) then ("--mismatch " +  '"' + mismatch + '"') else ""} \
      ~{if defined(gap_open) then ("--gap-open " +  '"' + gap_open + '"') else ""} \
      ~{if (gap_ext) then "--gap-ext" else ""} \
      ~{if (extra_b) then "--extra-b" else ""} \
      ~{if (extra_f) then "--extra-f" else ""} \
      ~{if (in_list) then "--in-list" else ""} \
      ~{if (file_ouput_file) then "--output" else ""} \
      ~{if (result) then "--result" else ""} \
      ~{if (out_pog) then "--out-pog" else ""} \
      ~{if defined(cons_alg) then ("--cons-alg " +  '"' + cons_alg + '"') else ""} \
      ~{if (diploid) then "--diploid" else ""} \
      ~{if defined(min_freq) then ("--min-freq " +  '"' + min_freq + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    aln_mode: "alignment mode [0]\\n0: global, 1: local, 2: extension"
    match: "INT       match score [2]"
    mismatch: "mismatch penalty [4]"
    gap_open: "(,INT) gap opening penalty (O1,O2) [4,24]"
    gap_ext: "INT(,INT) gap extension penalty (E1,E2) [2,1]\\nabPOA provides three gap penalty modes, cost of a g-long gap:\\n- convex (default): min{O1+g*E1, O2+g*E2}\\n- affine (set O2 as 0): O1+g*E1\\n- linear (set O1 as 0): g*E1"
    extra_b: "INT       first adaptive banding parameter [10]\\nset b as < 0 to disable adaptive banded DP"
    extra_f: "FLOAT     second adaptive banding parameter [0.01]\\nthe number of extra bases added on both sites of the band is\\nb+f*L, where L is the length of the aligned sequence"
    in_list: "input file is a list of sequence file names [False]\\neach line is one sequence file containing a set of sequences\\nwhich will be aligned by abPOA to generate a consensus sequence"
    file_ouput_file: "FILE      ouput to FILE [stdout]"
    result: "INT       output result mode [0]\\n- 0: consensus (FASTA format)\\n- 1: MSA (PIR format)\\n- 2: both 0 & 1"
    out_pog: "FILE      dump final alignment graph to FILE (.pdf/.png) [Null]"
    cons_alg: "algorithm to use for consensus calling [0]\\n- 0: heaviest bundling\\n- 1: heaviest in column"
    diploid: "input data is diploid [False]"
    min_freq: "min frequency of each consensus for diploid input [0.30]"
    in_dot_f_a_slash_fq: ""
  }
  output {
    File out_stdout = stdout()
  }
}