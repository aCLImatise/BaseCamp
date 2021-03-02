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
    Boolean? output_fn
    Boolean? _endmargin_margin
    Boolean? _flagsexclude_string
    Boolean? verbose
    Boolean? tags_enrich
    Boolean? phasefn_string_required
    Boolean? _rdbfn_string
    Boolean? _genomesize_int
    Boolean? coverage_float_set
    Boolean? fail_low_cov
    Boolean? random_seed
    Boolean? wlfn_string_list
    Boolean? window
    Boolean? print
    Boolean? int_set_maxcov
    Boolean? int_set_mincov
    Boolean? int_set_minlen
    Boolean? mini_dt
    Boolean? bool_false_set_gapfilt
    Boolean? int_set_mindepth
    Boolean? int_set_minoverhang
    Boolean? blacklist_in
    Boolean? idt_stage_two
    Boolean? int_maximum_number
    Boolean? max_diff
    Boolean? int_minimum_amount
    Boolean? int_depths_lower
    Boolean? bool_false_run
    Boolean? keep_intermediates
    Boolean? _nproc_int
    Boolean? lasjsonfn_string_required
    Boolean? int_minimum_number
    Boolean? debug_log_fn
    Boolean? int_minimum_read
    Boolean? min_idt_pct
    Boolean? dry_run
    Boolean? test
    Boolean? stream
    Boolean? debug
    Boolean? silent
    Boolean? _string_set
    Boolean? flip_rc
    File? out_fmt
    Boolean? no_sort
    Boolean? mb_per_block
    Boolean? blacklist_fn
    String mapping_dot
    String augmented
    String raptor_db_dot
    String megabytes_dot
    String output_dot
    String sequences
    String read
    String var_63
    String var_64
    String _infn_string
    File var_66
    String var_67
    File var_68
    String var_69
    String var_70
    String filterlogfn_string_required
    File outputfn_string_required_final
    String assembly_dot
    String pb_reports_dot
    String var_75
    String r_readtocontigmap_string
    String var_77
    String var_78
    String partialsfn_string_set
    String var_80
    String var_81
    String ctg_name
    String the_shard_prefix
    String var_84
    String deprecated
    String jobs
  }
  command <<<
    falconc help \
      ~{mapping_dot} \
      ~{augmented} \
      ~{raptor_db_dot} \
      ~{megabytes_dot} \
      ~{output_dot} \
      ~{sequences} \
      ~{read} \
      ~{var_63} \
      ~{var_64} \
      ~{_infn_string} \
      ~{var_66} \
      ~{var_67} \
      ~{var_68} \
      ~{var_69} \
      ~{var_70} \
      ~{filterlogfn_string_required} \
      ~{outputfn_string_required_final} \
      ~{assembly_dot} \
      ~{pb_reports_dot} \
      ~{var_75} \
      ~{r_readtocontigmap_string} \
      ~{var_77} \
      ~{var_78} \
      ~{partialsfn_string_set} \
      ~{var_80} \
      ~{var_81} \
      ~{ctg_name} \
      ~{the_shard_prefix} \
      ~{var_84} \
      ~{deprecated} \
      ~{jobs} \
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
      ~{if (output_fn) then "--output-fn" else ""} \
      ~{if (_endmargin_margin) then "-e" else ""} \
      ~{if (_flagsexclude_string) then "-F" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (tags_enrich) then "--tags-enrich" else ""} \
      ~{if (phasefn_string_required) then "-p" else ""} \
      ~{if (_rdbfn_string) then "-r" else ""} \
      ~{if (_genomesize_int) then "-g" else ""} \
      ~{if (coverage_float_set) then "-c" else ""} \
      ~{if (fail_low_cov) then "--fail-low-cov" else ""} \
      ~{if (random_seed) then "--random-seed" else ""} \
      ~{if (wlfn_string_list) then "-w" else ""} \
      ~{if (window) then "--window" else ""} \
      ~{if (print) then "--print" else ""} \
      ~{if (int_set_maxcov) then "--maxCov" else ""} \
      ~{if (int_set_mincov) then "--minCov" else ""} \
      ~{if (int_set_minlen) then "--minLen" else ""} \
      ~{if (mini_dt) then "--minIdt" else ""} \
      ~{if (bool_false_set_gapfilt) then "--gapFilt" else ""} \
      ~{if (int_set_mindepth) then "--minDepth" else ""} \
      ~{if (int_set_minoverhang) then "--minOverhang" else ""} \
      ~{if (blacklist_in) then "--blacklistIn" else ""} \
      ~{if (idt_stage_two) then "--idt-stage2" else ""} \
      ~{if (int_maximum_number) then "--max-cov" else ""} \
      ~{if (max_diff) then "--max-diff" else ""} \
      ~{if (int_minimum_amount) then "--min-overhang" else ""} \
      ~{if (int_depths_lower) then "--min-depth" else ""} \
      ~{if (bool_false_run) then "--gap-filt" else ""} \
      ~{if (keep_intermediates) then "--keepIntermediates" else ""} \
      ~{if (_nproc_int) then "-n" else ""} \
      ~{if (lasjsonfn_string_required) then "-l" else ""} \
      ~{if (int_minimum_number) then "--min-cov" else ""} \
      ~{if (debug_log_fn) then "--debug-log-fn" else ""} \
      ~{if (int_minimum_read) then "--min-len" else ""} \
      ~{if (min_idt_pct) then "--min-idt-pct" else ""} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if (stream) then "--stream" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if (_string_set) then "--phased-read-file" else ""} \
      ~{if (flip_rc) then "--flip-rc" else ""} \
      ~{if (out_fmt) then "--out-fmt" else ""} \
      ~{if (no_sort) then "--no-sort" else ""} \
      ~{if (mb_per_block) then "--mb-per-block" else ""} \
      ~{if (blacklist_fn) then "--blacklist-fn" else ""}
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
    output_fn: "=             string  REQUIRED  Bam or Sam filename (based on\\nits extension)"
    _endmargin_margin: "=, --end-margin=       int     25        Maximum margin on contig ends,\\nin basepairs"
    _flagsexclude_string: "=, --Flags-exclude=    string  \\\"0\\\"       Integer (0x ok) of flags to\\nexclude, independent of other\\nfilters"
    verbose: "bool    false     Show each skipped alignment,\\nand a count."
    tags_enrich: "bool    false     Also enrich the tags. (See\\nbam-tags-enrich.)"
    phasefn_string_required: "=, --phase-fn=  string  REQUIRED  read2ctg.txt file"
    _rdbfn_string: "=, --rdb-fn=       string  \\\"rawreads.db\\\"  set rdb_fn"
    _genomesize_int: "=, --genome-size=  int64   4600000        set genome_size"
    coverage_float_set: "=, --coverage=     float   30.0           set coverage"
    fail_low_cov: "bool    false          Exit non-zero if the input\\ncoverage was insufficient to\\nsatisfy the requirement."
    random_seed: "=         int64   REQUIRED  Seed for random generation."
    wlfn_string_list: "=, --wl-fn=      string  \\\"\\\"        white list of sequences to rotate,\\none per line, no spaces, no trailing\\nspaces"
    window: "=          int     500       window size to caculate gc-skew"
    print: "bool    false     print skew data to files\\n('SEQ.gc_skew.txt'), one per sequence"
    int_set_maxcov: "=          int     200       set maxCov"
    int_set_mincov: "=          int     2         set minCov"
    int_set_minlen: "=          int     6000      set minLen"
    mini_dt: "=          float   95.0      set minIdt"
    bool_false_set_gapfilt: "bool    false     set gapFilt"
    int_set_mindepth: "=        int     2         set minDepth"
    int_set_minoverhang: "=          int     0         set minOverhang"
    blacklist_in: "=          string  REQUIRED  set blacklistIn"
    idt_stage_two: "=            float   90.0      Stage two percent identify"
    int_maximum_number: "=               int     200       Maximum number of overlaps on\\neither side of a read"
    max_diff: "=              int     100       Reads are skipped is abs(5p-3p)\\noverlap counts > maxDiff"
    int_minimum_amount: "=          int     0         Minimum amount of overhang\\nbases in an overlap to keep the\\noverlap"
    int_depths_lower: "=             int     2         Depths lower than minDepth are\\nconsidered gaps"
    bool_false_run: "bool    false     Run depth filter, takes a\\nlittle more time"
    keep_intermediates: "bool    false     set keepIntermediates"
    _nproc_int: "=, --n-proc=           int     24        Number of processes to run"
    lasjsonfn_string_required: "=, --las-json-fn=      string  REQUIRED         List of las files from\\nfalcon, e.g../1-preads_\\novl/las-merge-combine/la\\ns_fofn.json"
    int_minimum_number: "=               int     2                Minimum number of\\noverlaps on either side\\nof a read"
    debug_log_fn: "=          string  \\\"LA4Falcon.log\\\"  Write stderr to this"
    int_minimum_read: "=      int     400       Minimum read length; reads shorter than\\nminLen will be discarded"
    min_idt_pct: "=  float   96.0      Minimum overlap identity; worse overlaps\\nwill be discarded"
    dry_run: "bool    false                     set dry_run"
    test: "bool    false                                                           set test"
    stream: "bool    false                                                           set stream"
    debug: "bool    false                                                           set debug"
    silent: "bool    false                                                           set silent"
    _string_set: "=         string  \\\"\\\"                                           set"
    flip_rc: "bool    false     reverse complement (RC) the sequence if\\nalignment is in RC"
    out_fmt: "=      string  \\\"json\\\"    Output format of the config file. (json\\nor bash)"
    no_sort: "bool    false     set no_sort"
    mb_per_block: "=               int     REQUIRED                     Try to target\\nmegabases total\\nin all contigs\\nin any block"
    blacklist_fn: "=               string  \\\"\\\"                           Specifies a file\\nwith a list of\\ncontigs to skip\\nfor polishing."
    mapping_dot: "Options:"
    augmented: "raptor-db-filter [optional-params] "
    raptor_db_dot: "-u, --use-umc          bool    REQUIRED  Use Unique Molecular Coverage"
    megabytes_dot: "-a=, --alarms-fn=      string  \\\"\\\"        Optional JSON file to write SMRT"
    output_dot: "Options:"
    sequences: "-o=, --output-fn=  string  REQUIRED  fasta (or fastq) file output"
    read: "-k=, --kmersize=    int     21        Kmer size"
    var_63: "-m=, --min-len=          int     6000      Minimum read length, reads"
    var_64: "--min-cov=               int     2         Minimum number of overlaps on"
    _infn_string: "--in-fn=                 string  REQUIRED  M4 overlaps file"
    var_66: "-o=, --out-fn=           string  REQUIRED  Final m4 overlaps file"
    var_67: "--help-syntax                                     advanced:"
    var_68: "-o=, --out-fn=           string  REQUIRED         Final m4 overlap file"
    var_69: "-m=, --min-len=          int     6000      Minimum read length, reads"
    var_70: "--min-cov=               int     2         Minimum number of overlaps on"
    filterlogfn_string_required: "-f=, --filter-log-fn=    string  REQUIRED  Write read filter stats to this"
    outputfn_string_required_final: "--outputFn=              string  REQUIRED  Final m4 overlap file"
    assembly_dot: "stats-gff [required&optional-params] "
    pb_reports_dot: "rr-hctg-track1 [optional-params] "
    var_75: "help"
    r_readtocontigmap_string: "-r=, --read-to-contig-map=  string  \\\"./4-quiver/read_maps/read_to_contig_map\\\"                       setread_to_cont"
    var_77: "--rawread-ids=              string  \\\"./2-asm-falcon/read_maps/dump_rawread_ids/rawread_ids\\\"         set rawread_ids"
    var_78: "help"
    partialsfn_string_set: "-p=, --partials-fn=         string  \\\"./4-quiver/track-reads/partials.json\\\"       set partials_fn"
    var_80: "--rawread-ids=              string  \\\"\\\"                                           set rawread_ids"
    var_81: "help"
    ctg_name: "-o=, --out-ids-fn=            string  \\\"all_shard_ids\\\"              If given, this"
    the_shard_prefix: ".block_id files."
    var_84: "--help-syntax                                  advanced:"
    deprecated: "Options:"
    jobs: "-s=, --shard-prefix=  string  \\\"shard_id\\\"  The output. Shard files are"
  }
  output {
    File out_stdout = stdout()
    File out_outputfn_string_required_bam = "${in_outputfn_string_required_bam}"
    File out_out_fmt = "${in_out_fmt}"
  }
}