version 1.0

task TRNAscanSE {
  input {
    Boolean? search_eukaryotic_trnas
    Boolean? search_bacterial_trnas
    Boolean? search_archaeal_trnas
    String? search_mitochondrial_trnasoptions
    Boolean? search_other_organellar
    Boolean? use_general_trnas
    String? mt
    Boolean? search_using_infernaldefault
    Boolean? max
    Boolean? search_using_method
    Boolean? cove
    Boolean? breakdown
    Boolean? no_pseudo
    File? save_final_results
    File? save_trna_structures
    File? iso_specific
    File? stats
    File? bed
    File? fast_a
    File? log
    Boolean? detail
    Boolean? brief
    File? prefix
    Boolean? progress
    Boolean? quiet
    Boolean? hit_src
    Int? score
    File? gen_code
    Int? pad
    Int? len
    File? conf
    Boolean? force_ow
    String? match
    File? search
    Boolean? search_trnas_alternate
    Boolean? ts_can
    Float? t_mode
    File? verbose
    Boolean? no_merge
    Boolean? eu_find
    String? e_mode
    String? is_core
    File? fs_res
    Boolean? mid
    File? false_pos
    File? missed
    Int? thread
    Boolean? options
  }
  command <<<
    tRNAscan_SE \
      ~{if (search_eukaryotic_trnas) then "-E" else ""} \
      ~{if (search_bacterial_trnas) then "-B" else ""} \
      ~{if (search_archaeal_trnas) then "-A" else ""} \
      ~{if defined(search_mitochondrial_trnasoptions) then ("-M " +  '"' + search_mitochondrial_trnasoptions + '"') else ""} \
      ~{if (search_other_organellar) then "-O" else ""} \
      ~{if (use_general_trnas) then "-G" else ""} \
      ~{if defined(mt) then ("--mt " +  '"' + mt + '"') else ""} \
      ~{if (search_using_infernaldefault) then "-I" else ""} \
      ~{if (max) then "--max" else ""} \
      ~{if (search_using_method) then "-L" else ""} \
      ~{if (cove) then "--cove" else ""} \
      ~{if (breakdown) then "--breakdown" else ""} \
      ~{if (no_pseudo) then "--nopseudo" else ""} \
      ~{if defined(save_final_results) then ("--output " +  '"' + save_final_results + '"') else ""} \
      ~{if defined(save_trna_structures) then ("--struct " +  '"' + save_trna_structures + '"') else ""} \
      ~{if defined(iso_specific) then ("--isospecific " +  '"' + iso_specific + '"') else ""} \
      ~{if defined(stats) then ("--stats " +  '"' + stats + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (detail) then "--detail" else ""} \
      ~{if (brief) then "--brief" else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (progress) then "--progress" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (hit_src) then "--hitsrc" else ""} \
      ~{if defined(score) then ("--score " +  '"' + score + '"') else ""} \
      ~{if defined(gen_code) then ("--gencode " +  '"' + gen_code + '"') else ""} \
      ~{if defined(pad) then ("--pad " +  '"' + pad + '"') else ""} \
      ~{if defined(len) then ("--len " +  '"' + len + '"') else ""} \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if (force_ow) then "--forceow" else ""} \
      ~{if defined(match) then ("--match " +  '"' + match + '"') else ""} \
      ~{if defined(search) then ("--search " +  '"' + search + '"') else ""} \
      ~{if (search_trnas_alternate) then "-U" else ""} \
      ~{if (ts_can) then "--tscan" else ""} \
      ~{if defined(t_mode) then ("--tmode " +  '"' + t_mode + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if (no_merge) then "--nomerge" else ""} \
      ~{if (eu_find) then "--eufind" else ""} \
      ~{if defined(e_mode) then ("--emode " +  '"' + e_mode + '"') else ""} \
      ~{if defined(is_core) then ("--iscore " +  '"' + is_core + '"') else ""} \
      ~{if defined(fs_res) then ("--fsres " +  '"' + fs_res + '"') else ""} \
      ~{if (mid) then "--mid" else ""} \
      ~{if defined(false_pos) then ("--falsepos " +  '"' + false_pos + '"') else ""} \
      ~{if defined(missed) then ("--missed " +  '"' + missed + '"') else ""} \
      ~{if defined(thread) then ("--thread " +  '"' + thread + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    search_eukaryotic_trnas: ": search for eukaryotic tRNAs (default)"
    search_bacterial_trnas: ": search for bacterial tRNAs"
    search_archaeal_trnas: ": search for archaeal tRNAs"
    search_mitochondrial_trnasoptions: ": search for mitochondrial tRNAs\\noptions: mammal, vert"
    search_other_organellar: ": search for other organellar tRNAs"
    use_general_trnas: ": use general tRNA model (cytoslic tRNAs from all 3 domains included)"
    mt: ": use mito tRNA models for cytosolic/mito detemination\\n(if not specified, only cytosolic isotype-specific model scan will be performed)"
    search_using_infernaldefault: ": search using Infernal\\ndefault use with -E, -B, -A, or -G; optional for -O"
    max: ": maximum sensitivity mode - search using Infernal without hmm filter (very slow)"
    search_using_method: ": search using the legacy method (tRNAscan, EufindtRNA, and COVE)\\nuse with -E, -B, -A or -G"
    cove: ": search using COVE analysis only (legacy, extremely slow)\\ndefault use with -O"
    breakdown: ": show breakdown of primary and secondary structure components to\\ncovariance model bit scores"
    no_pseudo: ": disable pseudogene checking"
    save_final_results: ": save final results in <file>"
    save_trna_structures: ": save tRNA secondary structures to <file>"
    iso_specific: ": save results using isotype-specific models in <file>"
    stats: ": save statistics summary for run in <file>\\n(speed, # tRNAs found in each part of search, etc)"
    bed: ": save results in BED file format of <file>"
    fast_a: ": save predicted tRNA sequences in FASTA file format of <file>"
    log: ": save log of program progress in <file>"
    detail: ": display prediction outputs in detailed view"
    brief: ": brief output format (no column headers)"
    prefix: ": use <label> prefix for all default output file names"
    progress: ": display program progress messages"
    quiet: ": quiet mode (credits & run option selections suppressed)"
    hit_src: ": show origin of hits (Ts=tRNAscan 1.4, Eu=EufindtRNA,\\nBo=Both Ts and Eu, Inf=Infernal)"
    score: ": set cutoff score (in bits) for reporting tRNAs (default=20)"
    gen_code: ": use alternate genetic codes specified in <file> for\\ndetermining tRNA type"
    pad: ": use <number> nucleotides padding when passing first-pass\\ntRNA bounds predictions to CM analysis (default=8)"
    len: ": set max length of tRNA intron+variable region for legacy search mode\\n(default=116bp)"
    conf: ": tRNAscan-SE configuration file (default: tRNAscan-SE.conf)"
    force_ow: ": do not prompt user before overwriting pre-existing\\nresult files  (for batch processing)"
    match: ": search only sequences with names matching <EXPR> string\\n(<EXPR> may contain * or ? wildcard chars)"
    search: ": start search at sequence with name matching <EXPR> string\\nand continue to end of input sequence file(s)"
    search_trnas_alternate: ": search for tRNAs with alternate models defined in configuration file"
    ts_can: ": search using tRNAscan only (defaults to strict params)"
    t_mode: ": explicitly set tRNAscan params, where <mode>=R or S\\n(R=relaxed, S=strict tRNAscan v1.3 params)"
    verbose: ": save verbose tRNAscan 1.3 output to <file>"
    no_merge: ": Keep redundant tRNAscan 1.3 hits (don't filter out multiple\\npredictions per tRNA identification)"
    eu_find: ": search using Eukaryotic tRNA finder (EufindtRNA) only\\n(defaults to Normal seach parameters when run alone,\\nor to Relaxed search params when run with Cove)"
    e_mode: ": explicitly set EufindtRNA params, where <mode>=R, N, or S\\n(relaxed, normal, or strict)"
    is_core: ": manually set \\\"intermediate\\\" cutoff score for EufindtRNA"
    fs_res: ": save first-pass scan results from EufindtRNA, tRNAscan, or\\nInfernal hmm in <file> in tabular results format"
    mid: ": fast scan mode - search using Infernal with mid-level strictness of hmm filter"
    false_pos: ": save first-pass candidate tRNAs in <file> that were then\\nfound to be false positives by second-pass analysis"
    missed: ": save all seqs that do NOT have at least one\\ntRNA prediction in them (aka \\\"missed\\\" seqs)"
    thread: ": number of threads used for running infernal (default is to use available threads)"
    options: ""
  }
  output {
    File out_stdout = stdout()
    File out_prefix = "${in_prefix}"
    File out_verbose = "${in_verbose}"
  }
}