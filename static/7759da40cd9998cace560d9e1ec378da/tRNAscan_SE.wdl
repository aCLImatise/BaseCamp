version 1.0

task TRNAscanSE {
  input {
    Boolean? search_eukaryotic_trnas
    Boolean? search_bacterial_trnas
    Boolean? _search_archaeal
    String? search_mitochondrial_trnas
    Boolean? search_other_trnas
    Boolean? use_model_cytoslic
    String? mt
    Boolean? search_using_use
    Boolean? max
    Boolean? search_using_method
    Boolean? cove
    Boolean? breakdown
    Boolean? no_pseudo
    String? prefix
    Boolean? progress
    Boolean? quiet
    Boolean? hit_src
    String? score
    File? gen_code
    String? pad
    Int? len
    File? conf
    Boolean? force_ow
    String? match
    String? search
    Boolean? search_trnas_alternate
    Boolean? ts_can
    String? t_mode
    File? verbose
    Boolean? no_merge
    Boolean? eu_find
    String? e_mode
    String? is_core
    File? fs_res
    Boolean? mid
    File? false_pos
    File? missed
    String? thread
    Boolean? options
  }
  command <<<
    tRNAscan-SE \
      ~{true="-E" false="" search_eukaryotic_trnas} \
      ~{true="-B" false="" search_bacterial_trnas} \
      ~{true="-A" false="" _search_archaeal} \
      ~{if defined(search_mitochondrial_trnas) then ("-M " +  '"' + search_mitochondrial_trnas + '"') else ""} \
      ~{true="-O" false="" search_other_trnas} \
      ~{true="-G" false="" use_model_cytoslic} \
      ~{if defined(mt) then ("--mt " +  '"' + mt + '"') else ""} \
      ~{true="-I" false="" search_using_use} \
      ~{true="--max" false="" max} \
      ~{true="-L" false="" search_using_method} \
      ~{true="--cove" false="" cove} \
      ~{true="--breakdown" false="" breakdown} \
      ~{true="--nopseudo" false="" no_pseudo} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{true="--progress" false="" progress} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--hitsrc" false="" hit_src} \
      ~{if defined(score) then ("--score " +  '"' + score + '"') else ""} \
      ~{if defined(gen_code) then ("--gencode " +  '"' + gen_code + '"') else ""} \
      ~{if defined(pad) then ("--pad " +  '"' + pad + '"') else ""} \
      ~{if defined(len) then ("--len " +  '"' + len + '"') else ""} \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{true="--forceow" false="" force_ow} \
      ~{if defined(match) then ("--match " +  '"' + match + '"') else ""} \
      ~{if defined(search) then ("--search " +  '"' + search + '"') else ""} \
      ~{true="-U" false="" search_trnas_alternate} \
      ~{true="--tscan" false="" ts_can} \
      ~{if defined(t_mode) then ("--tmode " +  '"' + t_mode + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{true="--nomerge" false="" no_merge} \
      ~{true="--eufind" false="" eu_find} \
      ~{if defined(e_mode) then ("--emode " +  '"' + e_mode + '"') else ""} \
      ~{if defined(is_core) then ("--iscore " +  '"' + is_core + '"') else ""} \
      ~{if defined(fs_res) then ("--fsres " +  '"' + fs_res + '"') else ""} \
      ~{true="--mid" false="" mid} \
      ~{if defined(false_pos) then ("--falsepos " +  '"' + false_pos + '"') else ""} \
      ~{if defined(missed) then ("--missed " +  '"' + missed + '"') else ""} \
      ~{if defined(thread) then ("--thread " +  '"' + thread + '"') else ""} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    search_eukaryotic_trnas: ": search for eukaryotic tRNAs (default)"
    search_bacterial_trnas: ": search for bacterial tRNAs"
    _search_archaeal: ": search for archaeal tRNAs"
    search_mitochondrial_trnas: ": search for mitochondrial tRNAs options: mammal, vert"
    search_other_trnas: ": search for other organellar tRNAs"
    use_model_cytoslic: ": use general tRNA model (cytoslic tRNAs from all 3 domains included)"
    mt: ": use mito tRNA models for cytosolic/mito detemination (if not specified, only cytosolic isotype-specific model scan will be performed)"
    search_using_use: ": search using Infernal default use with -E, -B, -A, or -G; optional for -O"
    max: ": maximum sensitivity mode - search using Infernal without hmm filter (very slow)"
    search_using_method: ": search using the legacy method (tRNAscan, EufindtRNA, and COVE) use with -E, -B, -A or -G"
    cove: ": search using COVE analysis only (legacy, extremely slow) default use with -O"
    breakdown: ": show breakdown of primary and secondary structure components to covariance model bit scores"
    no_pseudo: ": disable pseudogene checking"
    prefix: ": use <label> prefix for all default output file names"
    progress: ": display program progress messages"
    quiet: ": quiet mode (credits & run option selections suppressed)"
    hit_src: ": show origin of hits (Ts=tRNAscan 1.4, Eu=EufindtRNA,  Bo=Both Ts and Eu, Inf=Infernal)"
    score: ": set cutoff score (in bits) for reporting tRNAs (default=20)"
    gen_code: ": use alternate genetic codes specified in <file> for determining tRNA type"
    pad: ": use <number> nucleotides padding when passing first-pass tRNA bounds predictions to CM analysis (default=8)"
    len: ": set max length of tRNA intron+variable region for legacy search mode (default=116bp)"
    conf: ": tRNAscan-SE configuration file (default: tRNAscan-SE.conf)"
    force_ow: ": do not prompt user before overwriting pre-existing result files  (for batch processing)"
    match: ": search only sequences with names matching <EXPR> string (<EXPR> may contain * or ? wildcard chars)"
    search: ": start search at sequence with name matching <EXPR> string and continue to end of input sequence file(s)"
    search_trnas_alternate: ": search for tRNAs with alternate models defined in configuration file"
    ts_can: ": search using tRNAscan only (defaults to strict params)"
    t_mode: ": explicitly set tRNAscan params, where <mode>=R or S (R=relaxed, S=strict tRNAscan v1.3 params)"
    verbose: ": save verbose tRNAscan 1.3 output to <file>"
    no_merge: ": Keep redundant tRNAscan 1.3 hits (don't filter out multiple predictions per tRNA identification)"
    eu_find: ": search using Eukaryotic tRNA finder (EufindtRNA) only (defaults to Normal seach parameters when run alone, or to Relaxed search params when run with Cove)"
    e_mode: ": explicitly set EufindtRNA params, where <mode>=R, N, or S (relaxed, normal, or strict)"
    is_core: ": manually set \"intermediate\" cutoff score for EufindtRNA"
    fs_res: ": save first-pass scan results from EufindtRNA, tRNAscan, or Infernal hmm in <file> in tabular results format"
    mid: ": fast scan mode - search using Infernal with mid-level strictness of hmm filter"
    false_pos: ": save first-pass candidate tRNAs in <file> that were then found to be false positives by second-pass analysis"
    missed: ": save all seqs that do NOT have at least one tRNA prediction in them (aka \"missed\" seqs)"
    thread: ": number of threads used for running infernal (default is to use available threads)"
    options: ""
  }
}