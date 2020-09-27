version 1.0

task Prank {
  input {
    File? fasta_formatttreefile_ooutputfile
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
      ~{if defined(fasta_formatttreefile_ooutputfile) then ("-d " +  '"' + fasta_formatttreefile_ooutputfile + '"') else ""} \
      ~{if (gap_rate) then "-gaprate" else ""} \
      ~{if (gap_ext) then "-gapext" else ""} \
      ~{if (codon) then "-codon" else ""} \
      ~{if (dna) then "-DNA" else ""} \
      ~{if (term_gap) then "-termgap" else ""} \
      ~{if (no_missing) then "-nomissing" else ""} \
      ~{if (keep) then "-keep" else ""} \
      ~{if (iterate) then "-iterate" else ""} \
      ~{if (once) then "-once" else ""} \
      ~{if (prune_tree) then "-prunetree" else ""} \
      ~{if (prune_data) then "-prunedata" else ""} \
      ~{if (use_logs) then "-uselogs" else ""} \
      ~{if (translate) then "-translate" else ""} \
      ~{if (mt_translate) then "-mttranslate" else ""} \
      ~{if (convert) then "-convert" else ""} \
      ~{if (version) then "-version" else ""} \
      ~{if (verbose) then "-verbose" else ""}
  >>>
  parameter_meta {
    fasta_formatttreefile_ooutputfile: "(in FASTA format)\\n-t=tree_file [default: no tree, generate approximate NJ tree]\\n-o=output_file [default: 'output']\\n-f=output_format ['fasta' (default), 'phylipi', 'phylips', 'paml', 'nexus']\\n-showxml [output xml-files]\\n-showtree [output dnd-files]\\n-showanc [output ancestral sequences]\\n-showevents [output evolutioanry events]\\n-showall [output all of these]\\n-support [compute posterior support]\\n-njtree [estimate tree from input alignment (and realign)]\\n-treeonly [estimate tree only]\\n-quiet"
    gap_rate: "=# [gap opening rate; default: dna 0.025 / prot 0.005]"
    gap_ext: "=# [gap extension probability; default: dna 0.75 / prot 0.5]"
    codon: "[for coding DNA: use empirical codon model]"
    dna: "/ -protein [no autodetection: use dna or protein model]"
    term_gap: "[penalise terminal gaps normally]"
    no_missing: "[no missing data, use -F for terminal gaps ]"
    keep: "[keep alignment \\\"as is\\\" (e.g. for ancestor inference)]"
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
  output {
    File out_stdout = stdout()
  }
}