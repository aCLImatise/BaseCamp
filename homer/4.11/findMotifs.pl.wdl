version 1.0

task FindMotifspl {
  input {
    Boolean? len
    File? bg
    Boolean? start
    Boolean? end
    Boolean? rna
    Boolean? mask_slash_no_mask
    Boolean? number_optimize_default
    Boolean? mis
    Boolean? no_convert
    Boolean? norev_opp
    Boolean? no_motif
    File? find
    File? enhancers
    Boolean? enhancers_only
    File? fast_abg
    Boolean? chop_if_y
    String? m_set
    Boolean? basic
    Boolean? bits
    Boolean? no_check
    File? m_check
    Boolean? no_known
    File? m_known
    Boolean? no_facts
    Boolean? seq_logo
    Boolean? use_binomial_distribution
    Boolean? no_go
    Boolean? human_go
    String? ontology
    Boolean? no_weight
    Boolean? no_redun
    Boolean? input_file_group
    Boolean? cpg
    Boolean? rand
    Int? mask_motif
    Int? opt
    Boolean? peaks
    Boolean? nowarn
    Boolean? keep_files
    Boolean? dump_fast_a
    Boolean? min
    Boolean? max
    Boolean? reuse
    Boolean? fdr
    Boolean? homer_two
    Boolean? nlen
    Boolean? nmax
    Boolean? neutral
    Boolean? olen
    Boolean? number_use_default
    Boolean? maximum_expected_motif
    Boolean? cache
    Boolean? quick_mask
    Boolean? homer_one
    Boolean? min_lp
    Boolean? allow_adjustment_degeneracy
    Boolean? depth
    String input_list
    String promoter_set
    Directory output_directory
    String? addi_to_inal
  }
  command <<<
    findMotifs_pl \
      ~{input_list} \
      ~{promoter_set} \
      ~{output_directory} \
      ~{addi_to_inal} \
      ~{if (len) then "-len" else ""} \
      ~{if defined(bg) then ("-bg " +  '"' + bg + '"') else ""} \
      ~{if (start) then "-start" else ""} \
      ~{if (end) then "-end" else ""} \
      ~{if (rna) then "-rna" else ""} \
      ~{if (mask_slash_no_mask) then "-mask/-nomask" else ""} \
      ~{if (number_optimize_default) then "-S" else ""} \
      ~{if (mis) then "-mis" else ""} \
      ~{if (no_convert) then "-noconvert" else ""} \
      ~{if (norev_opp) then "-norevopp" else ""} \
      ~{if (no_motif) then "-nomotif" else ""} \
      ~{if defined(find) then ("-find " +  '"' + find + '"') else ""} \
      ~{if defined(enhancers) then ("-enhancers " +  '"' + enhancers + '"') else ""} \
      ~{if (enhancers_only) then "-enhancersOnly" else ""} \
      ~{if defined(fast_abg) then ("-fastaBg " +  '"' + fast_abg + '"') else ""} \
      ~{if (chop_if_y) then "-chopify" else ""} \
      ~{if defined(m_set) then ("-mset " +  '"' + m_set + '"') else ""} \
      ~{if (basic) then "-basic" else ""} \
      ~{if (bits) then "-bits" else ""} \
      ~{if (no_check) then "-nocheck" else ""} \
      ~{if defined(m_check) then ("-mcheck " +  '"' + m_check + '"') else ""} \
      ~{if (no_known) then "-noknown" else ""} \
      ~{if defined(m_known) then ("-mknown " +  '"' + m_known + '"') else ""} \
      ~{if (no_facts) then "-nofacts" else ""} \
      ~{if (seq_logo) then "-seqlogo" else ""} \
      ~{if (use_binomial_distribution) then "-b" else ""} \
      ~{if (no_go) then "-nogo" else ""} \
      ~{if (human_go) then "-humanGO" else ""} \
      ~{if defined(ontology) then ("-ontology " +  '"' + ontology + '"') else ""} \
      ~{if (no_weight) then "-noweight" else ""} \
      ~{if (no_redun) then "-noredun" else ""} \
      ~{if (input_file_group) then "-g" else ""} \
      ~{if (cpg) then "-cpg" else ""} \
      ~{if (rand) then "-rand" else ""} \
      ~{if defined(mask_motif) then ("-maskMotif " +  '"' + mask_motif + '"') else ""} \
      ~{if defined(opt) then ("-opt " +  '"' + opt + '"') else ""} \
      ~{if (peaks) then "-peaks" else ""} \
      ~{if (nowarn) then "-nowarn" else ""} \
      ~{if (keep_files) then "-keepFiles" else ""} \
      ~{if (dump_fast_a) then "-dumpFasta" else ""} \
      ~{if (min) then "-min" else ""} \
      ~{if (max) then "-max" else ""} \
      ~{if (reuse) then "-reuse" else ""} \
      ~{if (fdr) then "-fdr" else ""} \
      ~{if (homer_two) then "-homer2" else ""} \
      ~{if (nlen) then "-nlen" else ""} \
      ~{if (nmax) then "-nmax" else ""} \
      ~{if (neutral) then "-neutral" else ""} \
      ~{if (olen) then "-olen" else ""} \
      ~{if (number_use_default) then "-p" else ""} \
      ~{if (maximum_expected_motif) then "-e" else ""} \
      ~{if (cache) then "-cache" else ""} \
      ~{if (quick_mask) then "-quickMask" else ""} \
      ~{if (homer_one) then "-homer1" else ""} \
      ~{if (min_lp) then "-minlp" else ""} \
      ~{if (allow_adjustment_degeneracy) then "-float" else ""} \
      ~{if (depth) then "-depth" else ""}
  >>>
  parameter_meta {
    len: "<#>[,<#>,<#>...] (motif length, default=8,10,12) [NOTE: values greater 12 may cause the program\\nto run out of memmory - in these cases decrease the number of sequences analyzed]"
    bg: "(ids to use as background, default: all genes)"
    start: "<#> (offset from TSS, default=-300) [max=based on Promoter Set]"
    end: "<#> (offset from TSS, default=50) [max=based on Promoter Set]"
    rna: "(output RNA motif logos and compare to RNA motif database, automatically sets -norevopp)"
    mask_slash_no_mask: "(use/don't use repeatmasked files, default: -mask)"
    number_optimize_default: "<#> (Number of motifs to optimize, default: 25)"
    mis: "<#> (global optimization: searches for strings with # mismatches, default: 1)"
    no_convert: "(will not worry about converting input files into unigene ids)"
    norev_opp: "(do not search the reverse strand for motifs)"
    no_motif: "(don't search for de novo motif enrichment)"
    find: "(This will cause the program to only scan for motifs)"
    enhancers: "<genome verion>\\n(enhancers to include in search space, peaks/sequences should be named with a gene ID\\nIf multiple enhancers per gene, use the same gene ID, and all will be included)"
    enhancers_only: "(do not include promoter sequence in motif search)"
    fast_abg: "(This is recommended for fasta based analysis)"
    chop_if_y: "(chops up background regions to match size of target regions)\\ni.e. if background is a full genome or all mRNAs"
    m_set: "(check against motif collects, default: auto)"
    basic: "(don't check de novo motifs for similarity to known motifs)"
    bits: "(scale sequence logos by information content, default: doesn't scale)"
    no_check: "(don't check for similarity between novo motif motifs and known motifs)"
    m_check: "(known motifs to check against de novo motifs,"
    no_known: "(don't search for known motif enrichment, default: -known)"
    m_known: "(known motifs to check for enrichment,"
    no_facts: "(omit humor)"
    seq_logo: "(uses weblogo/seqlogo/ghostscript to visualize motifs, default uses SVG)"
    use_binomial_distribution: "(use binomial distribution to calculate p-values, hypergeometric is default)"
    no_go: "(don't search for gene ontology enrichment)"
    human_go: "(Convert IDs to human for GO analysis)"
    ontology: "[ont.genes] ... (custom ontologies for GO analysis)"
    no_weight: "(no CG correction)"
    no_redun: "(Don't remove predetermined redundant promoters/sequences)"
    input_file_group: "(input file is a group file, i.e. 1st column = id, 2nd = 0 or 1 [1=target,0=back])"
    cpg: "(use CpG% instead of GC% for sequence normalization)"
    rand: "(randomize labels for target and backgound sequences)"
    mask_motif: "[motif file 2] ... (motifs to mask before motif finding)"
    opt: "[motif file 2] ... (motifs to optimize/change length)"
    peaks: "(will produce peak file of promoters to use with findMotifsGenome.pl)"
    nowarn: "(no warnings)"
    keep_files: "(don't delete temporary files)"
    dump_fast_a: "(create target.fa and background.fa files)"
    min: "<#> (remove sequences shorter than #, default: 0)"
    max: "<#> (remove sequences longer than #, default: 1e10)"
    reuse: "(rerun homer using old seq files etc. with new options\\nand ignores input list, organism)"
    fdr: "<#> (Calculate empirical FDR for de novo discovery #=number of randomizations)"
    homer_two: "(use homer2 instead of original homer, default)"
    nlen: "<#> (length of lower-order oligos to normalize - general sequences, default: 3)"
    nmax: "<#> (Max normalization iterations, default: 160)"
    neutral: "(weight sequences to neutral frequencies, i.e. 25%, 6.25%, etc.)"
    olen: "<#> (lower-order oligo normalization for oligo table, use if -nlen isn't working well)"
    number_use_default: "<#> (Number of processors to use, default: 1)"
    maximum_expected_motif: "<#> (Maximum expected motif instance per bp in random sequence, default: 0.01)"
    cache: "<#> (size in MB for statistics cache, default: 500)"
    quick_mask: "(skip full masking after finding motifs, similar to original homer)"
    homer_one: "(to force the use of the original homer)"
    min_lp: "<#> (stop looking for motifs when seed logp score gets above #, default: -10)"
    allow_adjustment_degeneracy: "(allow adjustment of the degeneracy threshold for known motifs to improve p-value[dangerous])"
    depth: "[low|med|high|allnight] (time spent on local optimization default: med)"
    input_list: ""
    promoter_set: ""
    output_directory: ""
    addi_to_inal: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}