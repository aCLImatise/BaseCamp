version 1.0

task FalconcHelp {
  input {
    Boolean? help_syntax
    Boolean? _intdummy_int
    Boolean? _stringdummy_string
    Boolean? _floatreq_float
    Boolean? _bamsfofn_string
    Boolean? _allsubreadnamesfn_string
    Boolean? _minlen_int
    Boolean? min_frac
    File? _outputfn_string_required_filename
    Boolean? _inputfn_string
    Boolean? _endmargin_maximum
    Boolean? tags_enrich
    Boolean? _rdbfn_string
    Boolean? _genomesize_int
    Boolean? _coverage_float
    Boolean? fail_low_cov
    Boolean? _wlfn_string
    Boolean? window
    Boolean? print
    Boolean? int_set_maxcov
    Boolean? int_set_mincov
    Boolean? int_set_minlen
    Boolean? mini_dt
    Boolean? bool_false_set_gapfilt
    Boolean? _int_set
    Boolean? blacklist_in
    Boolean? idt_stage_two
    Boolean? int_maximum_number
    Boolean? max_diff
    Boolean? int_depths_lower
    Boolean? bool_false_filter
    Boolean? keep_intermediates
    Boolean? _nproc_int
    Boolean? _lasjsonfn_string
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
    File o__
    String help
    File o_outfn_
    String ip_a_slash_raptor
    String skipped
    String var_61
    String var_62
    String var_63
    File _outputfn_string_required_file
    String var_65
    String r__readtocontigmap
    String var_67
    String var_68
    String _partialsfn_string
    String var_70
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
      ~{o__} \
      ~{help} \
      ~{o_outfn_} \
      ~{ip_a_slash_raptor} \
      ~{skipped} \
      ~{var_61} \
      ~{var_62} \
      ~{var_63} \
      ~{_outputfn_string_required_file} \
      ~{var_65} \
      ~{r__readtocontigmap} \
      ~{var_67} \
      ~{var_68} \
      ~{_partialsfn_string} \
      ~{var_70} \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_intdummy_int) then "-d" else ""} \
      ~{if (_stringdummy_string) then "-s" else ""} \
      ~{if (_floatreq_float) then "-f" else ""} \
      ~{if (_bamsfofn_string) then "-b" else ""} \
      ~{if (_allsubreadnamesfn_string) then "-a" else ""} \
      ~{if (_minlen_int) then "-m" else ""} \
      ~{if (min_frac) then "--min-frac" else ""} \
      ~{if (_outputfn_string_required_filename) then "-o" else ""} \
      ~{if (_inputfn_string) then "-i" else ""} \
      ~{if (_endmargin_maximum) then "-e" else ""} \
      ~{if (tags_enrich) then "--tags-enrich" else ""} \
      ~{if (_rdbfn_string) then "-r" else ""} \
      ~{if (_genomesize_int) then "-g" else ""} \
      ~{if (_coverage_float) then "-c" else ""} \
      ~{if (fail_low_cov) then "--fail-low-cov" else ""} \
      ~{if (_wlfn_string) then "-w" else ""} \
      ~{if (window) then "--window" else ""} \
      ~{if (print) then "--print" else ""} \
      ~{if (int_set_maxcov) then "--maxCov" else ""} \
      ~{if (int_set_mincov) then "--minCov" else ""} \
      ~{if (int_set_minlen) then "--minLen" else ""} \
      ~{if (mini_dt) then "--minIdt" else ""} \
      ~{if (bool_false_set_gapfilt) then "--gapFilt" else ""} \
      ~{if (_int_set) then "--minDepth" else ""} \
      ~{if (blacklist_in) then "--blacklistIn" else ""} \
      ~{if (idt_stage_two) then "--idt-stage2" else ""} \
      ~{if (int_maximum_number) then "--max-cov" else ""} \
      ~{if (max_diff) then "--max-diff" else ""} \
      ~{if (int_depths_lower) then "--min-depth" else ""} \
      ~{if (bool_false_filter) then "--gap-filt" else ""} \
      ~{if (keep_intermediates) then "--keepIntermediates" else ""} \
      ~{if (_nproc_int) then "-n" else ""} \
      ~{if (_lasjsonfn_string) then "-l" else ""} \
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
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _intdummy_int: "=, --int-dummy=     int     42       set int_dummy"
    _stringdummy_string: "=, --string-dummy=  string  \\\"hello\\\"  set string_dummy"
    _floatreq_float: "=, --float_req=  float  REQUIRED  special help message"
    _bamsfofn_string: "=, --bams-fofn=             string  REQUIRED  set bams_fofn"
    _allsubreadnamesfn_string: "=, --all-subread-names-fn=  string  \\\"\\\"        set all_subread_names_fn"
    _minlen_int: "=, --min-len=               int     -1        set min_len"
    min_frac: "=                   float   0.7       set min_frac"
    _outputfn_string_required_filename: "=, --output-fn=  string  REQUIRED  Bam or Sam filename (based on its\\nextension)"
    _inputfn_string: "=, --input-fn=   string  REQUIRED  Bam or Sam filename (based on its\\nextension), or '-'"
    _endmargin_maximum: "=, --end-margin=     int     25        Maximum margin on contig ends, in"
    tags_enrich: "bool    false     Also enrich the tags. (See\\nbam-tags-enrich.)"
    _rdbfn_string: "=, --rdb-fn=       string  \\\"rawreads.db\\\"  set rdb_fn"
    _genomesize_int: "=, --genome-size=  int64   4600000        set genome_size"
    _coverage_float: "=, --coverage=     float   30.0           set coverage"
    fail_low_cov: "bool    false          Exit non-zero if the input\\ncoverage was insufficient to\\nsatisfy the requirement."
    _wlfn_string: "=, --wl-fn=      string  \\\"\\\"        white list of sequences to rotate,\\none per line, no spaces, no trailing\\nspaces"
    window: "=          int     500       window size to caculate gc-skew"
    print: "bool    false     print skew data to files\\n('SEQ.gc_skew.txt'), one per sequence"
    int_set_maxcov: "=          int     200       set maxCov"
    int_set_mincov: "=          int     2         set minCov"
    int_set_minlen: "=          int     6000      set minLen"
    mini_dt: "=          float   95.0      set minIdt"
    bool_false_set_gapfilt: "bool    false     set gapFilt"
    _int_set: "=        int     2         set minDepth"
    blacklist_in: "=          string  REQUIRED  set blacklistIn"
    idt_stage_two: "=            float   90.0      Stage two percent identify"
    int_maximum_number: "=               int     200       Maximum number of overlaps on\\neither side of a read"
    max_diff: "=              int     100       Reads are skipped is abs(5p-3p)\\noverlap counts > maxDiff"
    int_depths_lower: "=             int     2         Depths lower than minDepth are\\nconsidered gaps"
    bool_false_filter: "bool    false     Run depth filter, takes a\\nlittle more time"
    keep_intermediates: "bool    false     set keepIntermediates"
    _nproc_int: "=, --n-proc=           int     24        Number of processes to run"
    _lasjsonfn_string: "=, --las-json-fn=      string  REQUIRED         List of las files from\\nfalcon, e.g../1-preads_\\novl/las-merge-combine/la\\ns_fofn.json"
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
    o__: "-o=, --out-fn=           string  REQUIRED  Final m4 overlap file"
    help: "--help-syntax                                     advanced:"
    o_outfn_: "-o=, --out-fn=           string  REQUIRED         Final m4 overlap file"
    ip_a_slash_raptor: "-i=, --idt-stage1=       float   90.0      Stage one percent identity"
    skipped: "--idt-stage2=            float   90.0      Stage two percent identify"
    var_61: "-m=, --min-len=          int     6000      Minimum read length, reads"
    var_62: "--min-cov=               int     2         Minimum number of overlaps on"
    var_63: "-f=, --filter-log-fn=    string  REQUIRED  Write read filter stats to this"
    _outputfn_string_required_file: "--outputFn=              string  REQUIRED  Final m4 overlap file"
    var_65: "help"
    r__readtocontigmap: "-r=, --read-to-contig-map=  string  \\\"./4-quiver/read_maps/read_to_contig_map\\\"                       setread_to_cont"
    var_67: "--rawread-ids=              string  \\\"./2-asm-falcon/read_maps/dump_rawread_ids/rawread_ids\\\"         set rawread_ids"
    var_68: "help"
    _partialsfn_string: "-p=, --partials-fn=         string  \\\"./4-quiver/track-reads/partials.json\\\"       set partials_fn"
    var_70: "--rawread-ids=              string  \\\"\\\"                                           set rawread_ids"
  }
  output {
    File out_stdout = stdout()
    File out__outputfn_string_required_filename = "${in__outputfn_string_required_filename}"
  }
}