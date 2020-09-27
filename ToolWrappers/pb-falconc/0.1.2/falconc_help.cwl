class: CommandLineTool
id: falconc_help.cwl
inputs:
- id: in_help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean
  inputBinding:
    prefix: --help-syntax
- id: in__intdummy_int
  doc: =, --int-dummy=     int     42       set int_dummy
  type: boolean
  inputBinding:
    prefix: -d
- id: in__stringdummy_string
  doc: =, --string-dummy=  string  "hello"  set string_dummy
  type: boolean
  inputBinding:
    prefix: -s
- id: in__floatreq_float
  doc: =, --float_req=  float  REQUIRED  special help message
  type: boolean
  inputBinding:
    prefix: -f
- id: in__bamsfofn_string
  doc: =, --bams-fofn=             string  REQUIRED  set bams_fofn
  type: boolean
  inputBinding:
    prefix: -b
- id: in__allsubreadnamesfn_string
  doc: =, --all-subread-names-fn=  string  ""        set all_subread_names_fn
  type: boolean
  inputBinding:
    prefix: -a
- id: in__minlen_int
  doc: =, --min-len=               int     -1        set min_len
  type: boolean
  inputBinding:
    prefix: -m
- id: in_min_frac
  doc: =                   float   0.7       set min_frac
  type: boolean
  inputBinding:
    prefix: --min-frac
- id: in__outputfn_string_required_filename
  doc: "=, --output-fn=  string  REQUIRED  Bam or Sam filename (based on its\nextension)"
  type: File
  inputBinding:
    prefix: -o
- id: in__inputfn_string
  doc: "=, --input-fn=   string  REQUIRED  Bam or Sam filename (based on its\nextension),\
    \ or '-'"
  type: boolean
  inputBinding:
    prefix: -i
- id: in__endmargin_maximum
  doc: =, --end-margin=     int     25        Maximum margin on contig ends, in
  type: boolean
  inputBinding:
    prefix: -e
- id: in_tags_enrich
  doc: "bool    false     Also enrich the tags. (See\nbam-tags-enrich.)"
  type: boolean
  inputBinding:
    prefix: --tags-enrich
- id: in__rdbfn_string
  doc: =, --rdb-fn=       string  "rawreads.db"  set rdb_fn
  type: boolean
  inputBinding:
    prefix: -r
- id: in__genomesize_int
  doc: =, --genome-size=  int64   4600000        set genome_size
  type: boolean
  inputBinding:
    prefix: -g
- id: in__coverage_float
  doc: =, --coverage=     float   30.0           set coverage
  type: boolean
  inputBinding:
    prefix: -c
- id: in_fail_low_cov
  doc: "bool    false          Exit non-zero if the input\ncoverage was insufficient\
    \ to\nsatisfy the requirement."
  type: boolean
  inputBinding:
    prefix: --fail-low-cov
- id: in__wlfn_string
  doc: "=, --wl-fn=      string  \"\"        white list of sequences to rotate,\n\
    one per line, no spaces, no trailing\nspaces"
  type: boolean
  inputBinding:
    prefix: -w
- id: in_window
  doc: =          int     500       window size to caculate gc-skew
  type: boolean
  inputBinding:
    prefix: --window
- id: in_print
  doc: "bool    false     print skew data to files\n('SEQ.gc_skew.txt'), one per sequence"
  type: boolean
  inputBinding:
    prefix: --print
- id: in_int_set_maxcov
  doc: =          int     200       set maxCov
  type: boolean
  inputBinding:
    prefix: --maxCov
- id: in_int_set_mincov
  doc: =          int     2         set minCov
  type: boolean
  inputBinding:
    prefix: --minCov
- id: in_int_set_minlen
  doc: =          int     6000      set minLen
  type: boolean
  inputBinding:
    prefix: --minLen
- id: in_mini_dt
  doc: =          float   95.0      set minIdt
  type: boolean
  inputBinding:
    prefix: --minIdt
- id: in_bool_false_set_gapfilt
  doc: bool    false     set gapFilt
  type: boolean
  inputBinding:
    prefix: --gapFilt
- id: in__int_set
  doc: =        int     2         set minDepth
  type: boolean
  inputBinding:
    prefix: --minDepth
- id: in_blacklist_in
  doc: =          string  REQUIRED  set blacklistIn
  type: boolean
  inputBinding:
    prefix: --blacklistIn
- id: in_idt_stage_two
  doc: =            float   90.0      Stage two percent identify
  type: boolean
  inputBinding:
    prefix: --idt-stage2
- id: in_int_maximum_number
  doc: "=               int     200       Maximum number of overlaps on\neither side\
    \ of a read"
  type: boolean
  inputBinding:
    prefix: --max-cov
- id: in_max_diff
  doc: "=              int     100       Reads are skipped is abs(5p-3p)\noverlap\
    \ counts > maxDiff"
  type: boolean
  inputBinding:
    prefix: --max-diff
- id: in_int_depths_lower
  doc: "=             int     2         Depths lower than minDepth are\nconsidered\
    \ gaps"
  type: boolean
  inputBinding:
    prefix: --min-depth
- id: in_bool_false_filter
  doc: "bool    false     Run depth filter, takes a\nlittle more time"
  type: boolean
  inputBinding:
    prefix: --gap-filt
- id: in_keep_intermediates
  doc: bool    false     set keepIntermediates
  type: boolean
  inputBinding:
    prefix: --keepIntermediates
- id: in__nproc_int
  doc: =, --n-proc=           int     24        Number of processes to run
  type: boolean
  inputBinding:
    prefix: -n
- id: in__lasjsonfn_string
  doc: "=, --las-json-fn=      string  REQUIRED         List of las files from\nfalcon,\
    \ e.g../1-preads_\novl/las-merge-combine/la\ns_fofn.json"
  type: boolean
  inputBinding:
    prefix: -l
- id: in_int_minimum_number
  doc: "=               int     2                Minimum number of\noverlaps on either\
    \ side\nof a read"
  type: boolean
  inputBinding:
    prefix: --min-cov
- id: in_debug_log_fn
  doc: =          string  "LA4Falcon.log"  Write stderr to this
  type: boolean
  inputBinding:
    prefix: --debug-log-fn
- id: in_lfc
  doc: "bool    false     IGNORED (used in\novlp_to_graph)"
  type: boolean
  inputBinding:
    prefix: --lfc
- id: in_disable_chime_r_bridge_removal
  doc: "bool    false     IGNORED (used in\novlp_to_graph)"
  type: boolean
  inputBinding:
    prefix: --disable_chimer_bridge_removal
- id: in_ctg_prefix
  doc: "=                    string  \"\"        IGNORED (used in\novlp_to_graph)"
  type: boolean
  inputBinding:
    prefix: --ctg_prefix
- id: in_int_minimum_read
  doc: "=                       int     400       Minimum read length;\nreads shorter\
    \ than\nminLen will be\ndiscarded"
  type: boolean
  inputBinding:
    prefix: --min-len
- id: in_min_idt_pct
  doc: "=                   float   96.0      Minimum overlap\nidentity; worse\noverlaps\
    \ will be\ndiscarded"
  type: boolean
  inputBinding:
    prefix: --min-idt-pct
- id: in__verbose_verbose
  doc: =, --verbose=  int     1                         set verbose
  type: boolean
  inputBinding:
    prefix: -v
- id: in_dry_run
  doc: bool    false                     set dry_run
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: in_test
  doc: bool    false                                                           set
    test
  type: boolean
  inputBinding:
    prefix: --test
- id: in_stream
  doc: bool    false                                                           set
    stream
  type: boolean
  inputBinding:
    prefix: --stream
- id: in_debug
  doc: bool    false                                                           set
    debug
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_silent
  doc: bool    false                                                           set
    silent
  type: boolean
  inputBinding:
    prefix: --silent
- id: in__string_set
  doc: =         string  ""                                           set
  type: boolean
  inputBinding:
    prefix: --phased-read-file
- id: in_base_pairs
  doc: -F=, --Flags-exclude=  string  "0"       Integer (0x ok) of flags to
  type: string
  inputBinding:
    position: 0
- id: in_filters
  doc: -v, --verbose          bool    false     Show each skipped alignment, and
  type: string
  inputBinding:
    position: 0
- id: in_output_dot
  doc: 'Options(opt-arg sep :|=|spc):'
  type: string
  inputBinding:
    position: 0
- id: in_sequences
  doc: -o=, --output-fn=  string  REQUIRED  fasta (or fastq) file output
  type: string
  inputBinding:
    position: 1
- id: in_read
  doc: -k=, --kmersize=    int     21        Kmer size
  type: string
  inputBinding:
    position: 0
- id: in_var_53
  doc: -m=, --min-len=          int     6000      Minimum read length, reads
  type: string
  inputBinding:
    position: 0
- id: in_var_54
  doc: --min-cov=               int     2         Minimum number of overlaps on
  type: string
  inputBinding:
    position: 0
- id: in_var_55
  doc: -f=, --filter-log-fn=    string  REQUIRED  Write read filter stats to this
  type: string
  inputBinding:
    position: 0
- id: in_o__
  doc: -o=, --out-fn=           string  REQUIRED  Final m4 overlap file
  type: File
  inputBinding:
    position: 1
- id: in_help
  doc: '--help-syntax                                     advanced:'
  type: string
  inputBinding:
    position: 0
- id: in_o_outfn_
  doc: -o=, --out-fn=           string  REQUIRED         Final m4 overlap file
  type: File
  inputBinding:
    position: 0
- id: in_ip_a_slash_raptor
  doc: -i=, --idt-stage1=       float   90.0      Stage one percent identity
  type: string
  inputBinding:
    position: 0
- id: in_skipped
  doc: --idt-stage2=            float   90.0      Stage two percent identify
  type: string
  inputBinding:
    position: 0
- id: in_var_61
  doc: -m=, --min-len=          int     6000      Minimum read length, reads
  type: string
  inputBinding:
    position: 1
- id: in_var_62
  doc: --min-cov=               int     2         Minimum number of overlaps on
  type: string
  inputBinding:
    position: 0
- id: in_var_63
  doc: -f=, --filter-log-fn=    string  REQUIRED  Write read filter stats to this
  type: string
  inputBinding:
    position: 0
- id: in__outputfn_string_required_file
  doc: --outputFn=              string  REQUIRED  Final m4 overlap file
  type: File
  inputBinding:
    position: 1
- id: in_var_65
  doc: help
  type: string
  inputBinding:
    position: 0
- id: in_r__readtocontigmap
  doc: -r=, --read-to-contig-map=  string  "./4-quiver/read_maps/read_to_contig_map"                       setread_to_cont
  type: string
  inputBinding:
    position: 1
- id: in_var_67
  doc: --rawread-ids=              string  "./2-asm-falcon/read_maps/dump_rawread_ids/rawread_ids"         set
    rawread_ids
  type: string
  inputBinding:
    position: 2
- id: in_var_68
  doc: help
  type: string
  inputBinding:
    position: 0
- id: in__partialsfn_string
  doc: -p=, --partials-fn=         string  "./4-quiver/track-reads/partials.json"       set
    partials_fn
  type: string
  inputBinding:
    position: 1
- id: in_var_70
  doc: --rawread-ids=              string  ""                                           set
    rawread_ids
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__outputfn_string_required_filename
  doc: "=, --output-fn=  string  REQUIRED  Bam or Sam filename (based on its\nextension)"
  type: File
  outputBinding:
    glob: $(inputs.in__outputfn_string_required_filename)
cwlVersion: v1.1
baseCommand:
- falconc
- help
