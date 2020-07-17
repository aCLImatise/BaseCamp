version 1.0

task Prank {
  input {
    Boolean? f
    Boolean? gap_rate
    Boolean? gap_ext
    Boolean? codon
    Boolean? dna
    Boolean? term_gap
    Boolean? no_missing
    Boolean? e
    Boolean? no_post
    Boolean? once
    Boolean? twice
    Boolean? use_logs
    Boolean? translate
    Boolean? mt_translate
    Boolean? max_pair_dist
    Boolean? convert
  }
  command <<<
    prank \
      ~{true="-F" false="" f} \
      ~{true="-gaprate" false="" gap_rate} \
      ~{true="-gapext" false="" gap_ext} \
      ~{true="-codon" false="" codon} \
      ~{true="-DNA" false="" dna} \
      ~{true="-termgap" false="" term_gap} \
      ~{true="-nomissing" false="" no_missing} \
      ~{true="-e" false="" e} \
      ~{true="-nopost" false="" no_post} \
      ~{true="-once" false="" once} \
      ~{true="-twice" false="" twice} \
      ~{true="-uselogs" false="" use_logs} \
      ~{true="-translate" false="" translate} \
      ~{true="-mttranslate" false="" mt_translate} \
      ~{true="-maxpairdist" false="" max_pair_dist} \
      ~{true="-convert" false="" convert}
  >>>
  parameter_meta {
    f: "[equivalent]"
    gap_rate: "=# [gap opening rate; default: dna 0.025 / prot 0.005]"
    gap_ext: "=# [gap extension probability; default: dna 0.75 / prot 0.5]"
    codon: "[for coding DNA: use empirical codon model]"
    dna: "/ -protein [no autodetection: use dna or protein model]"
    term_gap: "[penalise terminal gaps normally]"
    no_missing: "[no missing data, use -F for terminal gaps ]"
    e: "[pre-aligned sequences; do not remove gaps]"
    no_post: "[do not compute posterior support; default: compute]"
    once: "[run only once; default: twice if no guidetree given]"
    twice: "[run always twice]"
    use_logs: "[slower but should work for a greater number of sequences]"
    translate: "[translate to protein]"
    mt_translate: "[translate to protein using mt table]"
    max_pair_dist: "=# [maximum pairwise distance for matrix computation]"
    convert: "[no alignment, just convert to another format]"
  }
}