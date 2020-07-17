version 1.0

task Prank {
  input {
    Boolean? gap_rate
    Boolean? gap_ext
    Boolean? codon
    Boolean? dna
    Boolean? term_gap
    Boolean? no_missing
    Boolean? keep
    Boolean? iterate
    Boolean? once
    Boolean? prune_tree
    Boolean? prune_data
    Boolean? use_logs
    Boolean? translate
    Boolean? mt_translate
    Boolean? convert
    Boolean? version
    Boolean? verbose
  }
  command <<<
    prank \
      ~{true="-gaprate" false="" gap_rate} \
      ~{true="-gapext" false="" gap_ext} \
      ~{true="-codon" false="" codon} \
      ~{true="-DNA" false="" dna} \
      ~{true="-termgap" false="" term_gap} \
      ~{true="-nomissing" false="" no_missing} \
      ~{true="-keep" false="" keep} \
      ~{true="-iterate" false="" iterate} \
      ~{true="-once" false="" once} \
      ~{true="-prunetree" false="" prune_tree} \
      ~{true="-prunedata" false="" prune_data} \
      ~{true="-uselogs" false="" use_logs} \
      ~{true="-translate" false="" translate} \
      ~{true="-mttranslate" false="" mt_translate} \
      ~{true="-convert" false="" convert} \
      ~{true="-version" false="" version} \
      ~{true="-verbose" false="" verbose}
  >>>
  parameter_meta {
    gap_rate: "=# [gap opening rate; default: dna 0.025 / prot 0.005]"
    gap_ext: "=# [gap extension probability; default: dna 0.75 / prot 0.5]"
    codon: "[for coding DNA: use empirical codon model]"
    dna: "/ -protein [no autodetection: use dna or protein model]"
    term_gap: "[penalise terminal gaps normally]"
    no_missing: "[no missing data, use -F for terminal gaps ]"
    keep: "[keep alignment \"as is\" (e.g. for ancestor inference)]"
    iterate: "=# [rounds of re-alignment iteration]"
    once: "[run only once; same as -iterate=1]"
    prune_tree: "[prune guide tree branches with no sequence data]"
    prune_data: "[prune sequence data with no guide tree leaves]"
    use_logs: "[slower but should work for a greater number of sequences]"
    translate: "[translate to protein]"
    mt_translate: "[translate to protein using mt table]"
    convert: "[no alignment, just convert to another format]"
    version: "[check for updates]"
    verbose: "[print progress etc. during runtime]"
  }
}