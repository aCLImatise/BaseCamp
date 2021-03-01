version 1.0

task Prank {
  input {
    File? d
    File? m
    File? o
    String? var_3
    Boolean? short_names
    Boolean? var_5
    Boolean? gap_rate
    Boolean? gap_ext
    Boolean? codon
    Boolean? protein
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
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(var_3) then ("-f " +  '"' + var_3 + '"') else ""} \
      ~{if (short_names) then "-shortnames" else ""} \
      ~{if (var_5) then "-F" else ""} \
      ~{if (gap_rate) then "-gaprate" else ""} \
      ~{if (gap_ext) then "-gapext" else ""} \
      ~{if (codon) then "-codon" else ""} \
      ~{if (protein) then "-protein" else ""} \
      ~{if (term_gap) then "-termgap" else ""} \
      ~{if (no_missing) then "-nomissing" else ""} \
      ~{if (e) then "-e" else ""} \
      ~{if (no_post) then "-nopost" else ""} \
      ~{if (once) then "-once" else ""} \
      ~{if (twice) then "-twice" else ""} \
      ~{if (use_logs) then "-uselogs" else ""} \
      ~{if (translate) then "-translate" else ""} \
      ~{if (mt_translate) then "-mttranslate" else ""} \
      ~{if (max_pair_dist) then "-maxpairdist" else ""} \
      ~{if (convert) then "-convert" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    d: "[default: no tree, generate approximate NJ tree]"
    m: "[default: HKY2/WAG]"
    o: "[default: 'output']"
    var_3: "[default: Fasta; type '--help' for details]"
    short_names: "[truncate names at first space]"
    var_5: "[equivalent]"
    gap_rate: "=# [gap opening rate; default: dna 0.025 / prot 0.005]"
    gap_ext: "=# [gap extension probability; default: dna 0.75 / prot 0.5]"
    codon: "[for coding DNA: use empirical codon model]"
    protein: "[no autodetection: use dna or protein model]"
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
  output {
    File out_stdout = stdout()
    File out_o = "${in_o}"
  }
}