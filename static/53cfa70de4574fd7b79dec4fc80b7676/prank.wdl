version 1.0

task Prank {
  input {
    File? in_fasta_format
    File? t
    File? o
    String? f
    Boolean? show_xml
    Boolean? show_tree
    Boolean? show_an_c
    Boolean? show_events
    Boolean? show_all
    Boolean? support
    Boolean? nj_tree
    Boolean? tree_only
    Boolean? gap_rate
    Boolean? gap_ext
    Boolean? codon
    Boolean? protein
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
      ~{if defined(in_fasta_format) then ("-d " +  '"' + in_fasta_format + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if (show_xml) then "-showxml" else ""} \
      ~{if (show_tree) then "-showtree" else ""} \
      ~{if (show_an_c) then "-showanc" else ""} \
      ~{if (show_events) then "-showevents" else ""} \
      ~{if (show_all) then "-showall" else ""} \
      ~{if (support) then "-support" else ""} \
      ~{if (nj_tree) then "-njtree" else ""} \
      ~{if (tree_only) then "-treeonly" else ""} \
      ~{if (gap_rate) then "-gaprate" else ""} \
      ~{if (gap_ext) then "-gapext" else ""} \
      ~{if (codon) then "-codon" else ""} \
      ~{if (protein) then "-protein" else ""} \
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
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_fasta_format: "(in FASTA format)"
    t: "[default: no tree, generate approximate NJ tree]"
    o: "[default: 'output']"
    f: "['fasta' (default), 'phylipi', 'phylips', 'paml', 'nexus']"
    show_xml: "[output xml-files]"
    show_tree: "[output dnd-files]"
    show_an_c: "[output ancestral sequences]"
    show_events: "[output evolutioanry events]"
    show_all: "[output all of these]"
    support: "[compute posterior support]"
    nj_tree: "[estimate tree from input alignment (and realign)]"
    tree_only: "[estimate tree only]"
    gap_rate: "=# [gap opening rate; default: dna 0.025 / prot 0.005]"
    gap_ext: "=# [gap extension probability; default: dna 0.75 / prot 0.5]"
    codon: "[for coding DNA: use empirical codon model]"
    protein: "[no autodetection: use dna or protein model]"
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
    File out_o = "${in_o}"
  }
}