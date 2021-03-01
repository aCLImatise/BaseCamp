version 1.0

task FalconcHelp {
  input {
    Boolean? help_syntax
    Boolean? _intdummy_int
    Boolean? stringdummy_string_set
    Boolean? _floatreq_float
    Boolean? _bamsfofn_string
    Boolean? _allsubreadnamesfn_string
    Boolean? _minlen_int_set
    Boolean? min_frac
    File? outputfn_string_required_bam
    Boolean? inputfn_string_required
    Boolean? _endmargin_margin
    Boolean? tags_enrich
    Boolean? _rdbfn_string
    Boolean? _genomesize_int
    Boolean? coverage_float_set
    Boolean? fail_low_cov
    Boolean? wlfn_string_list
    Boolean? window
    Boolean? print
    Boolean? int_set_maxcov
    Boolean? int_set_mincov
    Boolean? int_set_minlen
    Boolean? mini_dt
    Boolean? bool_false_set_gapfilt
    Boolean? int_set_mindepth
    Boolean? blacklist_in
    Boolean? idt_stage_two
    Boolean? int_maximum_number
    Boolean? max_diff
    Boolean? int_depths_lower
    Boolean? bool_false_run
    Boolean? keep_intermediates
    Boolean? _nproc_int
    Boolean? lasjsonfn_string_required
    Boolean? int_minimum_number
    Boolean? debug_log_fn
    Boolean? lfc
    Boolean? disable_chime_r_bridge_removal
    Boolean? ctg_prefix
    Boolean? int_minimum_read
    Boolean? min_idt_pct
    Boolean? _verbose_verbose
    Boolean? dry_run
    Boolean? test
    Boolean? stream
    Boolean? debug
    Boolean? silent
    Boolean? _string_set
    String base_pairs
    String filters
    String output_dot
    String sequences
    String read
    String var_53
    String var_54
    String var_55
    File var_56
    String help
    File var_58
    String var_59
    String var_60
    String var_61
    File outputfn_string_required_final
    String var_63
    String r_readtocontigmap_string
    String var_65
    String var_66
    String partialsfn_string_set
    String var_68
  }
  command <<<
    falconc help \
      ~{base_pairs} \
      ~{filters} \
      ~{output_dot} \
      ~{sequences} \
      ~{read} \
      ~{var_53} \
      ~{var_54} \
      ~{var_55} \
      ~{var_56} \
      ~{help} \
      ~{var_58} \
      ~{var_59} \
      ~{var_60} \
      ~{var_61} \
      ~{outputfn_string_required_final} \
      ~{var_63} \
      ~{r_readtocontigmap_string} \
      ~{var_65} \
      ~{var_66} \
      ~{partialsfn_string_set} \
      ~{var_68} \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_intdummy_int) then "-d" else ""} \
      ~{if (stringdummy_string_set) then "-s" else ""} \
      ~{if (_floatreq_float) then "-f" else ""} \
      ~{if (_bamsfofn_string) then "-b" else ""} \
      ~{if (_allsubreadnamesfn_string) then "-a" else ""} \
      ~{if (_minlen_int_set) then "-m" else ""} \
      ~{if (min_frac) then "--min-frac" else ""} \
      ~{if (outputfn_string_required_bam) then "-o" else ""} \
      ~{if (inputfn_string_required) then "-i" else ""} \
      ~{if (_endmargin_margin) then "-e" else ""} \
      ~{if (tags_enrich) then "--tags-enrich" else ""} \
      ~{if (_rdbfn_string) then "-r" else ""} \
      ~{if (_genomesize_int) then "-g" else ""} \
      ~{if (coverage_float_set) then "-c" else ""} \
      ~{if (fail_low_cov) then "--fail-low-cov" else ""} \
      ~{if (wlfn_string_list) then "-w" else ""} \
      ~{if (window) then "--window" else ""} \
      ~{if (print) then "--print" else ""} \
      ~{if (int_set_maxcov) then "--maxCov" else ""} \
      ~{if (int_set_mincov) then "--minCov" else ""} \
      ~{if (int_set_minlen) then "--minLen" else ""} \
      ~{if (mini_dt) then "--minIdt" else ""} \
      ~{if (bool_false_set_gapfilt) then "--gapFilt" else ""} \
      ~{if (int_set_mindepth) then "--minDepth" else ""} \
      ~{if (blacklist_in) then "--blacklistIn" else ""} \
      ~{if (idt_stage_two) then "--idt-stage2" else ""} \
      ~{if (int_maximum_number) then "--max-cov" else ""} \
      ~{if (max_diff) then "--max-diff" else ""} \
      ~{if (int_depths_lower) then "--min-depth" else ""} \
      ~{if (bool_false_run) then "--gap-filt" else ""} \
      ~{if (keep_intermediates) then "--keepIntermediates" else ""} \
      ~{if (_nproc_int) then "-n" else ""} \
      ~{if (lasjsonfn_string_required) then "-l" else ""} \
      ~{if (int_minimum_number) then "--min-cov" else ""} \
      ~{if (debug_log_fn) then "--debug-log-fn" else ""} \
      ~{if (lfc) then "--lfc" else ""} \
      ~{if (disable_chime_r_bridge_removal) then "--disable_chimer_bridge_removal" else ""} \
      ~{if (ctg_prefix) then "--ctg_prefix" else ""} \
      ~{if (int_minimum_read) then "--min-len" else ""} \
      ~{if (min_idt_pct) then "--min-idt-pct" else ""} \
      ~{if (_verbose_verbose) then "-v" else ""} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if (stream) then "--stream" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if (_string_set) then "--phased-read-file" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _intdummy_int: "=, --int-dummy=     int     42       set int_dummy"
    stringdummy_string_set: "=, --string-dummy=  string  \\\"hello\\\"  set string_dummy"
    _floatreq_float: "=, --float_req=  float  REQUIRED  special help message"
    _bamsfofn_string: "=, --bams-fofn=             string  REQUIRED  set bams_fofn"
    _allsubreadnamesfn_string: "=, --all-subread-names-fn=  string  \\\"\\\"        set all_subread_names_fn"
    _minlen_int_set: "=, --min-len=               int     -1        set min_len"
    min_frac: "=                   float   0.7       set min_frac"
    outputfn_string_required_bam: "=, --output-fn=  string  REQUIRED  Bam or Sam filename (based on its\\nextension)"
    inputfn_string_required: "=, --input-fn=   string  REQUIRED  Bam or Sam filename (based on its\\nextension), or '-'"
    _endmargin_margin: "=, --end-margin=     int     25        Maximum margin on contig ends, in"
    tags_enrich: "bool    false     Also enrich the tags. (See\\nbam-tags-enrich.)"
    _rdbfn_string: "=, --rdb-fn=       string  \\\"rawreads.db\\\"  set rdb_fn"
    _genomesize_int: "=, --genome-size=  int64   4600000        set genome_size"
    coverage_float_set: "=, --coverage=     float   30.0           set coverage"
    fail_low_cov: "bool    false          Exit non-zero if the input\\ncoverage was insufficient to\\nsatisfy the requirement."
    wlfn_string_list: "=, --wl-fn=      string  \\\"\\\"        white list of sequences to rotate,\\none per line, no spaces, no trailing\\nspaces"
    window: "=          int     500       window size to caculate gc-skew"
    print: "bool    false     print skew data to files\\n('SEQ.gc_skew.txt'), one per sequence"
    int_set_maxcov: "=          int     200       set maxCov"
    int_set_mincov: "=          int     2         set minCov"
    int_set_minlen: "=          int     6000      set minLen"
    mini_dt: "=          float   95.0      set minIdt"
    bool_false_set_gapfilt: "bool    false     set gapFilt"
    int_set_mindepth: "=        int     2         set minDepth"
    blacklist_in: "=          string  REQUIRED  set blacklistIn"
    idt_stage_two: "=            float   90.0      Stage two percent identify"
    int_maximum_number: "=               int     200       Maximum number of overlaps on\\neither side of a read"
    max_diff: "=              int     100       Reads are skipped is abs(5p-3p)\\noverlap counts > maxDiff"
    int_depths_lower: "=             int     2         Depths lower than minDepth are\\nconsidered gaps"
    bool_false_run: "bool    false     Run depth filter, takes a\\nlittle more time"
    keep_intermediates: "bool    false     set keepIntermediates"
    _nproc_int: "=, --n-proc=           int     24        Number of processes to run"
    lasjsonfn_string_required: "=, --las-json-fn=      string  REQUIRED         List of las files from\\nfalcon, e.g../1-preads_\\novl/las-merge-combine/la\\ns_fofn.json"
    int_minimum_number: "=               int     2                Minimum number of\\noverlaps on either side\\nof a read"
    debug_log_fn: "=          string  \\\"LA4Falcon.log\\\"  Write stderr to this"
    lfc: "bool    false     IGNORED (used in\\novlp_to_graph)"
    disable_chime_r_bridge_removal: "bool    false     IGNORED (used in\\novlp_to_graph)"
    ctg_prefix: "=                    string  \\\"\\\"        IGNORED (used in\\novlp_to_graph)"
    int_minimum_read: "=                       int     400       Minimum read length;\\nreads shorter than\\nminLen will be\\ndiscarded"
    min_idt_pct: "=                   float   96.0      Minimum overlap\\nidentity; worse\\noverlaps will be\\ndiscarded"
    _verbose_verbose: "=, --verbose=  int     1                         set verbose"
    dry_run: "bool    false                     set dry_run"
    test: "bool    false                                                           set test"
    stream: "bool    false                                                           set stream"
    debug: "bool    false                                                           set debug"
    silent: "bool    false                                                           set silent"
    _string_set: "=         string  \\\"\\\"                                           set"
    base_pairs: "-F=, --Flags-exclude=  string  \\\"0\\\"       Integer (0x ok) of flags to"
    filters: "-v, --verbose          bool    false     Show each skipped alignment, and"
    output_dot: "Options(opt-arg sep :|=|spc):"
    sequences: "-o=, --output-fn=  string  REQUIRED  fasta (or fastq) file output"
    read: "-k=, --kmersize=    int     21        Kmer size"
    var_53: "-m=, --min-len=          int     6000      Minimum read length, reads"
    var_54: "--min-cov=               int     2         Minimum number of overlaps on"
    var_55: "-f=, --filter-log-fn=    string  REQUIRED  Write read filter stats to this"
    var_56: "-o=, --out-fn=           string  REQUIRED  Final m4 overlap file"
    help: "--help-syntax                                     advanced:"
    var_58: "-o=, --out-fn=           string  REQUIRED         Final m4 overlap file"
    var_59: "-m=, --min-len=          int     6000      Minimum read length, reads"
    var_60: "--min-cov=               int     2         Minimum number of overlaps on"
    var_61: "-f=, --filter-log-fn=    string  REQUIRED  Write read filter stats to this"
    outputfn_string_required_final: "--outputFn=              string  REQUIRED  Final m4 overlap file"
    var_63: "help"
    r_readtocontigmap_string: "-r=, --read-to-contig-map=  string  \\\"./4-quiver/read_maps/read_to_contig_map\\\"                       setread_to_cont"
    var_65: "--rawread-ids=              string  \\\"./2-asm-falcon/read_maps/dump_rawread_ids/rawread_ids\\\"         set rawread_ids"
    var_66: "help"
    partialsfn_string_set: "-p=, --partials-fn=         string  \\\"./4-quiver/track-reads/partials.json\\\"       set partials_fn"
    var_68: "--rawread-ids=              string  \\\"\\\"                                           set rawread_ids"
  }
  output {
    File out_stdout = stdout()
    File out_outputfn_string_required_bam = "${in_outputfn_string_required_bam}"
  }
}