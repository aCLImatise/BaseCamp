version 1.0

task FindMotifsGenome.pl {
  input {
    Boolean? len
    Boolean? size
    Boolean? number_optimize_default
    Boolean? mis
    Boolean? norev_opp
    Boolean? no_motif
    Boolean? rna
    String? find
    String? m_set
    Boolean? basic
    Boolean? bits
    Boolean? no_check
    String? m_check
    Boolean? allow_adjustment_improve
    Boolean? no_known
    String? m_known
    Boolean? no_facts
    Boolean? seq_logo
    Boolean? number_use_input
    Boolean? local
    Boolean? redundant
    Boolean? max_n
    String? mask_motif
    String? opt
    Boolean? rand
    String? ref
    Boolean? oligo
    Boolean? dump_fast_a
    Boolean? pre_parse
    Directory? pre_parsed_dir
    Boolean? keep_files
    Boolean? fdr
    Boolean? homer_two
    Boolean? nlen
    Boolean? olen
    Boolean? number_use_default
    Boolean? maximum_expected_motif
    Boolean? cache
    Boolean? quick_mask
    Boolean? min_lp
    Boolean? homer_one
    Boolean? depth
    String pos_file
    String genome
    String output_directory
    String? additional
  }
  command <<<
    findMotifsGenome.pl \
      ~{pos_file} \
      ~{genome} \
      ~{output_directory} \
      ~{additional} \
      ~{true="-len" false="" len} \
      ~{true="-size" false="" size} \
      ~{true="-S" false="" number_optimize_default} \
      ~{true="-mis" false="" mis} \
      ~{true="-norevopp" false="" norev_opp} \
      ~{true="-nomotif" false="" no_motif} \
      ~{true="-rna" false="" rna} \
      ~{if defined(find) then ("-find " +  '"' + find + '"') else ""} \
      ~{if defined(m_set) then ("-mset " +  '"' + m_set + '"') else ""} \
      ~{true="-basic" false="" basic} \
      ~{true="-bits" false="" bits} \
      ~{true="-nocheck" false="" no_check} \
      ~{if defined(m_check) then ("-mcheck " +  '"' + m_check + '"') else ""} \
      ~{true="-float" false="" allow_adjustment_improve} \
      ~{true="-noknown" false="" no_known} \
      ~{if defined(m_known) then ("-mknown " +  '"' + m_known + '"') else ""} \
      ~{true="-nofacts" false="" no_facts} \
      ~{true="-seqlogo" false="" seq_logo} \
      ~{true="-N" false="" number_use_input} \
      ~{true="-local" false="" local} \
      ~{true="-redundant" false="" redundant} \
      ~{true="-maxN" false="" max_n} \
      ~{if defined(mask_motif) then ("-maskMotif " +  '"' + mask_motif + '"') else ""} \
      ~{if defined(opt) then ("-opt " +  '"' + opt + '"') else ""} \
      ~{true="-rand" false="" rand} \
      ~{if defined(ref) then ("-ref " +  '"' + ref + '"') else ""} \
      ~{true="-oligo" false="" oligo} \
      ~{true="-dumpFasta" false="" dump_fast_a} \
      ~{true="-preparse" false="" pre_parse} \
      ~{if defined(pre_parsed_dir) then ("-preparsedDir " +  '"' + pre_parsed_dir + '"') else ""} \
      ~{true="-keepFiles" false="" keep_files} \
      ~{true="-fdr" false="" fdr} \
      ~{true="-homer2" false="" homer_two} \
      ~{true="-nlen" false="" nlen} \
      ~{true="-olen" false="" olen} \
      ~{true="-p" false="" number_use_default} \
      ~{true="-e" false="" maximum_expected_motif} \
      ~{true="-cache" false="" cache} \
      ~{true="-quickMask" false="" quick_mask} \
      ~{true="-minlp" false="" min_lp} \
      ~{true="-homer1" false="" homer_one} \
      ~{true="-depth" false="" depth}
  >>>
  parameter_meta {
    len: "<#>[,<#>,<#>...] (motif length, default=8,10,12) [NOTE: values greater 12 may cause the program to run out of memory - in these cases decrease the number of sequences analyzed (-N), or try analyzing shorter sequence regions (i.e. -size 100)]"
    size: "<#> (fragment size to use for motif finding, default=200) -size <#,#> (i.e. -size -100,50 will get sequences from -100 to +50 relative from center) -size given (uses the exact regions you give it)"
    number_optimize_default: "<#> (Number of motifs to optimize, default: 25)"
    mis: "<#> (global optimization: searches for strings with # mismatches, default: 2)"
    norev_opp: "(don't search reverse strand for motifs)"
    no_motif: "(don't search for de novo motif enrichment)"
    rna: "(output RNA motif logos and compare to RNA motif database, automatically sets -norevopp)"
    find: "(This will cause the program to only scan for motifs)"
    m_set: "(check against motif collects, default: auto)"
    basic: "(just visualize de novo motifs, don't check similarity with known motifs)"
    bits: "(scale sequence logos by information content, default: doesn't scale)"
    no_check: "(don't search for de novo vs. known motif similarity)"
    m_check: "(known motifs to check against de novo motifs,"
    allow_adjustment_improve: "(allow adjustment of the degeneracy threshold for known motifs to improve p-value[dangerous])"
    no_known: "(don't search for known motif enrichment, default: -known)"
    m_known: "(known motifs to check for enrichment,"
    no_facts: "(omit humor)"
    seq_logo: "(use weblogo/seqlogo/ghostscript to generate logos, default uses SVG now)"
    number_use_input: "<#> (Number of sequences to use for motif finding, default=max(50k, 2x input)"
    local: "<#> (use local background, # of equal size regions around peaks to use i.e. 2)"
    redundant: "<#> (Remove redundant sequences matching greater than # percent, i.e. -redundant 0.5)"
    max_n: "<#> (maximum percentage of N's in sequence to consider for motif finding, default: 0.7)"
    mask_motif: "[motif file 2]... (motifs to mask before motif finding)"
    opt: "[motif file 2]... (motifs to optimize or change length of)"
    rand: "(randomize target and background sequences labels)"
    ref: "(use file for target and background - first argument is list of peak ids for targets)"
    oligo: "(perform analysis of individual oligo enrichment)"
    dump_fast_a: "(Dump fasta files for target and background sequences for use with other programs)"
    pre_parse: "(force new background files to be created)"
    pre_parsed_dir: "(location to search for preparsed file and/or place new files)"
    keep_files: "(keep temporary files)"
    fdr: "<#> (Calculate empirical FDR for de novo discovery #=number of randomizations)"
    homer_two: "(use homer2 instead of original homer, default)"
    nlen: "<#> (length of lower-order oligos to normalize in background, default: -nlen 3) -nmax <#> (Max normalization iterations, default: 160) -neutral (weight sequences to neutral frequencies, i.e. 25%, 6.25%, etc.)"
    olen: "<#> (lower-order oligo normalization for oligo table, use if -nlen isn't working well)"
    number_use_default: "<#> (Number of processors to use, default: 1)"
    maximum_expected_motif: "<#> (Maximum expected motif instance per bp in random sequence, default: 0.01)"
    cache: "<#> (size in MB for statistics cache, default: 500)"
    quick_mask: "(skip full masking after finding motifs, similar to original homer)"
    min_lp: "<#> (stop looking for motifs when seed logp score gets above #, default: -10)"
    homer_one: "(to force the use of the original homer)"
    depth: "[low|med|high|allnight] (time spent on local optimization default: med)"
    pos_file: ""
    genome: ""
    output_directory: ""
    additional: ""
  }
}