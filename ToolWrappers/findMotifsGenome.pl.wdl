version 1.0

task FindMotifsGenomepl {
  input {
    Boolean? mask
    File? bg
    Boolean? len
    Boolean? number_optimize_default
    Boolean? mis
    Boolean? norev_opp
    Boolean? no_motif
    Boolean? rna
    File? find
    String? m_set
    Boolean? basic
    Boolean? bits
    Boolean? no_check
    File? m_check
    Boolean? allow_adjustment_degeneracy
    Boolean? no_known
    File? m_known
    Boolean? no_facts
    Boolean? seq_logo
    Boolean? gc
    Boolean? cpg
    Boolean? no_weight
    Boolean? number_sequences_use
    Boolean? local
    Boolean? redundant
    Boolean? max_n
    Int? mask_motif
    Int? opt
    Boolean? rand
    File? ref
    Boolean? oligo
    Boolean? dump_fast_a
    Boolean? pre_parse
    Directory? pre_parsed_dir
    Boolean? keep_files
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
    Boolean? min_lp
    Boolean? homer_one
    Boolean? depth
    File pos_file
    String genome
    Directory output_directory
    String? additional
  }
  command <<<
    findMotifsGenome_pl \
      ~{pos_file} \
      ~{genome} \
      ~{output_directory} \
      ~{additional} \
      ~{if (mask) then "-mask" else ""} \
      ~{if defined(bg) then ("-bg " +  '"' + bg + '"') else ""} \
      ~{if (len) then "-len" else ""} \
      ~{if (number_optimize_default) then "-S" else ""} \
      ~{if (mis) then "-mis" else ""} \
      ~{if (norev_opp) then "-norevopp" else ""} \
      ~{if (no_motif) then "-nomotif" else ""} \
      ~{if (rna) then "-rna" else ""} \
      ~{if defined(find) then ("-find " +  '"' + find + '"') else ""} \
      ~{if defined(m_set) then ("-mset " +  '"' + m_set + '"') else ""} \
      ~{if (basic) then "-basic" else ""} \
      ~{if (bits) then "-bits" else ""} \
      ~{if (no_check) then "-nocheck" else ""} \
      ~{if defined(m_check) then ("-mcheck " +  '"' + m_check + '"') else ""} \
      ~{if (allow_adjustment_degeneracy) then "-float" else ""} \
      ~{if (no_known) then "-noknown" else ""} \
      ~{if defined(m_known) then ("-mknown " +  '"' + m_known + '"') else ""} \
      ~{if (no_facts) then "-nofacts" else ""} \
      ~{if (seq_logo) then "-seqlogo" else ""} \
      ~{if (gc) then "-gc" else ""} \
      ~{if (cpg) then "-cpg" else ""} \
      ~{if (no_weight) then "-noweight" else ""} \
      ~{if (number_sequences_use) then "-N" else ""} \
      ~{if (local) then "-local" else ""} \
      ~{if (redundant) then "-redundant" else ""} \
      ~{if (max_n) then "-maxN" else ""} \
      ~{if defined(mask_motif) then ("-maskMotif " +  '"' + mask_motif + '"') else ""} \
      ~{if defined(opt) then ("-opt " +  '"' + opt + '"') else ""} \
      ~{if (rand) then "-rand" else ""} \
      ~{if defined(ref) then ("-ref " +  '"' + ref + '"') else ""} \
      ~{if (oligo) then "-oligo" else ""} \
      ~{if (dump_fast_a) then "-dumpFasta" else ""} \
      ~{if (pre_parse) then "-preparse" else ""} \
      ~{if defined(pre_parsed_dir) then ("-preparsedDir " +  '"' + pre_parsed_dir + '"') else ""} \
      ~{if (keep_files) then "-keepFiles" else ""} \
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
      ~{if (min_lp) then "-minlp" else ""} \
      ~{if (homer_one) then "-homer1" else ""} \
      ~{if (depth) then "-depth" else ""}
  >>>
  parameter_meta {
    mask: "(mask repeats/lower case sequence, can also add 'r' to genome, i.e. mm9r)"
    bg: "(genomic positions to be used as background, default=automatic)\\nremoves background positions overlapping with target positions unless -keepOverlappingBg is used\\n-chopify (chop up large background regions to the avg size of target regions)"
    len: "<#>[,<#>,<#>...] (motif length, default=8,10,12) [NOTE: values greater 12 may cause the program\\nto run out of memory - in these cases decrease the number of sequences analyzed (-N),\\nor try analyzing shorter sequence regions (i.e. -size 100)]"
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
    allow_adjustment_degeneracy: "(allow adjustment of the degeneracy threshold for known motifs to improve p-value[dangerous])"
    no_known: "(don't search for known motif enrichment, default: -known)"
    m_known: "(known motifs to check for enrichment,"
    no_facts: "(omit humor)"
    seq_logo: "(use weblogo/seqlogo/ghostscript to generate logos, default uses SVG now)"
    gc: "(use GC% for sequence content normalization, now the default)"
    cpg: "(use CpG% instead of GC% for sequence content normalization)"
    no_weight: "(no CG correction)"
    number_sequences_use: "<#> (Number of sequences to use for motif finding, default=max(50k, 2x input)"
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
    nlen: "<#> (length of lower-order oligos to normalize in background, default: -nlen 3)"
    nmax: "<#> (Max normalization iterations, default: 160)"
    neutral: "(weight sequences to neutral frequencies, i.e. 25%, 6.25%, etc.)"
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
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}