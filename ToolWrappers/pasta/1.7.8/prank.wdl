version 1.0

task Prank {
  input {
    File? ttreefile_mmodelfile_ooutputfile
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
      ~{if defined(ttreefile_mmodelfile_ooutputfile) then ("-d " +  '"' + ttreefile_mmodelfile_ooutputfile + '"') else ""} \
      ~{if (f) then "-F" else ""} \
      ~{if (gap_rate) then "-gaprate" else ""} \
      ~{if (gap_ext) then "-gapext" else ""} \
      ~{if (codon) then "-codon" else ""} \
      ~{if (dna) then "-DNA" else ""} \
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
  parameter_meta {
    ttreefile_mmodelfile_ooutputfile: "-t=tree_file [default: no tree, generate approximate NJ tree]\\n-m=model_file [default: HKY2/WAG]\\n-o=output_file [default: 'output']\\n-f=output_format [default: Fasta; type '--help' for details]\\n-shortnames [truncate names at first space]\\n-quiet"
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
  output {
    File out_stdout = stdout()
  }
}