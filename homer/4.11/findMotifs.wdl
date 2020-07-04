version 1.0

task FindMotifs.pl {
  input {
    Boolean? len
    String? bg
    Boolean? start
    Boolean? end
    Boolean? rna
    Boolean? mask_slash_no_mask
    Boolean? number_optimize_default
    Boolean? mis
    Boolean? no_convert
    Boolean? norev_opp
    Boolean? no_motif
    String? find
    Boolean? enhancers_only
    String? fast_abg
    String? m_set
    Boolean? basic
    Boolean? bits
    Boolean? no_check
    String? m_check
    Boolean? no_known
    String? m_known
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
    String? mask_motif
    String? opt
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
    Boolean? olen
    Boolean? number_use_default
    Boolean? maximum_expected_motif
    Boolean? cache
    Boolean? quick_mask
    Boolean? homer_one
    Boolean? min_lp
    Boolean? allow_adjustment_improve
    Boolean? depth
    String input_list
    String promoter_set
    String output_directory
    String? addi_to_inal
  }
  command <<<
    findMotifs.pl \
      ~{input_list} \
      ~{promoter_set} \
      ~{output_directory} \
      ~{addi_to_inal} \
      ~{true="-len" false="" len} \
      ~{if defined(bg) then ("-bg " +  '"' + bg + '"') else ""} \
      ~{true="-start" false="" start} \
      ~{true="-end" false="" end} \
      ~{true="-rna" false="" rna} \
      ~{true="-mask/-nomask" false="" mask_slash_no_mask} \
      ~{true="-S" false="" number_optimize_default} \
      ~{true="-mis" false="" mis} \
      ~{true="-noconvert" false="" no_convert} \
      ~{true="-norevopp" false="" norev_opp} \
      ~{true="-nomotif" false="" no_motif} \
      ~{if defined(find) then ("-find " +  '"' + find + '"') else ""} \
      ~{true="-enhancersOnly" false="" enhancers_only} \
      ~{if defined(fast_abg) then ("-fastaBg " +  '"' + fast_abg + '"') else ""} \
      ~{if defined(m_set) then ("-mset " +  '"' + m_set + '"') else ""} \
      ~{true="-basic" false="" basic} \
      ~{true="-bits" false="" bits} \
      ~{true="-nocheck" false="" no_check} \
      ~{if defined(m_check) then ("-mcheck " +  '"' + m_check + '"') else ""} \
      ~{true="-noknown" false="" no_known} \
      ~{if defined(m_known) then ("-mknown " +  '"' + m_known + '"') else ""} \
      ~{true="-nofacts" false="" no_facts} \
      ~{true="-seqlogo" false="" seq_logo} \
      ~{true="-b" false="" use_binomial_distribution} \
      ~{true="-nogo" false="" no_go} \
      ~{true="-humanGO" false="" human_go} \
      ~{if defined(ontology) then ("-ontology " +  '"' + ontology + '"') else ""} \
      ~{true="-noweight" false="" no_weight} \
      ~{true="-noredun" false="" no_redun} \
      ~{true="-g" false="" input_file_group} \
      ~{true="-cpg" false="" cpg} \
      ~{true="-rand" false="" rand} \
      ~{if defined(mask_motif) then ("-maskMotif " +  '"' + mask_motif + '"') else ""} \
      ~{if defined(opt) then ("-opt " +  '"' + opt + '"') else ""} \
      ~{true="-peaks" false="" peaks} \
      ~{true="-nowarn" false="" nowarn} \
      ~{true="-keepFiles" false="" keep_files} \
      ~{true="-dumpFasta" false="" dump_fast_a} \
      ~{true="-min" false="" min} \
      ~{true="-max" false="" max} \
      ~{true="-reuse" false="" reuse} \
      ~{true="-fdr" false="" fdr} \
      ~{true="-homer2" false="" homer_two} \
      ~{true="-nlen" false="" nlen} \
      ~{true="-olen" false="" olen} \
      ~{true="-p" false="" number_use_default} \
      ~{true="-e" false="" maximum_expected_motif} \
      ~{true="-cache" false="" cache} \
      ~{true="-quickMask" false="" quick_mask} \
      ~{true="-homer1" false="" homer_one} \
      ~{true="-minlp" false="" min_lp} \
      ~{true="-float" false="" allow_adjustment_improve} \
      ~{true="-depth" false="" depth}
  >>>
  parameter_meta {
    len: "<#>[,<#>,<#>...] (motif length, default=8,10,12) [NOTE: values greater 12 may cause the program to run out of memmory - in these cases decrease the number of sequences analyzed]"
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
    enhancers_only: "(do not include promoter sequence in motif search)"
    fast_abg: "(This is recommended for fasta based analysis)"
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
    reuse: "(rerun homer using old seq files etc. with new options and ignores input list, organism)"
    fdr: "<#> (Calculate empirical FDR for de novo discovery #=number of randomizations)"
    homer_two: "(use homer2 instead of original homer, default)"
    nlen: "<#> (length of lower-order oligos to normalize - general sequences, default: 3) -nmax <#> (Max normalization iterations, default: 160) -neutral (weight sequences to neutral frequencies, i.e. 25%, 6.25%, etc.)"
    olen: "<#> (lower-order oligo normalization for oligo table, use if -nlen isn't working well)"
    number_use_default: "<#> (Number of processors to use, default: 1)"
    maximum_expected_motif: "<#> (Maximum expected motif instance per bp in random sequence, default: 0.01)"
    cache: "<#> (size in MB for statistics cache, default: 500)"
    quick_mask: "(skip full masking after finding motifs, similar to original homer)"
    homer_one: "(to force the use of the original homer)"
    min_lp: "<#> (stop looking for motifs when seed logp score gets above #, default: -10)"
    allow_adjustment_improve: "(allow adjustment of the degeneracy threshold for known motifs to improve p-value[dangerous])"
    depth: "[low|med|high|allnight] (time spent on local optimization default: med)"
    input_list: ""
    promoter_set: ""
    output_directory: ""
    addi_to_inal: ""
  }
}