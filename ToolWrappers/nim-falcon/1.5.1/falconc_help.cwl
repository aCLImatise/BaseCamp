class: CommandLineTool
id: falconc_help.cwl
inputs:
- id: in_help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean?
  inputBinding:
    prefix: --help-syntax
- id: in__intdummy_int
  doc: =, --int-dummy=     int     42       set int_dummy
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_stringdummy_string_set
  doc: =, --string-dummy=  string  "hello"  set string_dummy
  type: boolean?
  inputBinding:
    prefix: -s
- id: in__floatreq_float
  doc: =, --float_req=  float  REQUIRED  special help message
  type: boolean?
  inputBinding:
    prefix: -f
- id: in__bamsfofn_string
  doc: =, --bams-fofn=             string  REQUIRED  set bams_fofn
  type: boolean?
  inputBinding:
    prefix: -b
- id: in__allsubreadnamesfn_string
  doc: =, --all-subread-names-fn=  string  ""        set all_subread_names_fn
  type: boolean?
  inputBinding:
    prefix: -a
- id: in__minlen_int_set
  doc: =, --min-len=               int     -1        set min_len
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_min_frac
  doc: =                   float   0.7       set min_frac
  type: boolean?
  inputBinding:
    prefix: --min-frac
- id: in_outputfn_string_required_bam
  doc: "=, --output-fn=  string  REQUIRED  Bam or Sam filename (based on its\nextension)"
  type: File?
  inputBinding:
    prefix: -o
- id: in_inputfn_string_required
  doc: "=, --input-fn=   string  REQUIRED  Bam or Sam filename (based on its\nextension),\
    \ or '-'"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_output_fn
  doc: "=             string  REQUIRED  Bam or Sam filename (based on\nits extension)"
  type: boolean?
  inputBinding:
    prefix: --output-fn
- id: in__endmargin_margin
  doc: "=, --end-margin=       int     25        Maximum margin on contig ends,\n\
    in basepairs"
  type: boolean?
  inputBinding:
    prefix: -e
- id: in__flagsexclude_string
  doc: "=, --Flags-exclude=    string  \"0\"       Integer (0x ok) of flags to\nexclude,\
    \ independent of other\nfilters"
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_verbose
  doc: "bool    false     Show each skipped alignment,\nand a count."
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_tags_enrich
  doc: "bool    false     Also enrich the tags. (See\nbam-tags-enrich.)"
  type: boolean?
  inputBinding:
    prefix: --tags-enrich
- id: in_phasefn_string_required
  doc: =, --phase-fn=  string  REQUIRED  read2ctg.txt file
  type: boolean?
  inputBinding:
    prefix: -p
- id: in__rdbfn_string
  doc: =, --rdb-fn=       string  "rawreads.db"  set rdb_fn
  type: boolean?
  inputBinding:
    prefix: -r
- id: in__genomesize_int
  doc: =, --genome-size=  int64   4600000        set genome_size
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_coverage_float_set
  doc: =, --coverage=     float   30.0           set coverage
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_fail_low_cov
  doc: "bool    false          Exit non-zero if the input\ncoverage was insufficient\
    \ to\nsatisfy the requirement."
  type: boolean?
  inputBinding:
    prefix: --fail-low-cov
- id: in_random_seed
  doc: =         int64   REQUIRED  Seed for random generation.
  type: boolean?
  inputBinding:
    prefix: --random-seed
- id: in_wlfn_string_list
  doc: "=, --wl-fn=      string  \"\"        white list of sequences to rotate,\n\
    one per line, no spaces, no trailing\nspaces"
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_window
  doc: =          int     500       window size to caculate gc-skew
  type: boolean?
  inputBinding:
    prefix: --window
- id: in_print
  doc: "bool    false     print skew data to files\n('SEQ.gc_skew.txt'), one per sequence"
  type: boolean?
  inputBinding:
    prefix: --print
- id: in_int_set_maxcov
  doc: =          int     200       set maxCov
  type: boolean?
  inputBinding:
    prefix: --maxCov
- id: in_int_set_mincov
  doc: =          int     2         set minCov
  type: boolean?
  inputBinding:
    prefix: --minCov
- id: in_int_set_minlen
  doc: =          int     6000      set minLen
  type: boolean?
  inputBinding:
    prefix: --minLen
- id: in_mini_dt
  doc: =          float   95.0      set minIdt
  type: boolean?
  inputBinding:
    prefix: --minIdt
- id: in_bool_false_set_gapfilt
  doc: bool    false     set gapFilt
  type: boolean?
  inputBinding:
    prefix: --gapFilt
- id: in_int_set_mindepth
  doc: =        int     2         set minDepth
  type: boolean?
  inputBinding:
    prefix: --minDepth
- id: in_int_set_minoverhang
  doc: =          int     0         set minOverhang
  type: boolean?
  inputBinding:
    prefix: --minOverhang
- id: in_blacklist_in
  doc: =          string  REQUIRED  set blacklistIn
  type: boolean?
  inputBinding:
    prefix: --blacklistIn
- id: in_idt_stage_two
  doc: =            float   90.0      Stage two percent identify
  type: boolean?
  inputBinding:
    prefix: --idt-stage2
- id: in_int_maximum_number
  doc: "=               int     200       Maximum number of overlaps on\neither side\
    \ of a read"
  type: boolean?
  inputBinding:
    prefix: --max-cov
- id: in_max_diff
  doc: "=              int     100       Reads are skipped is abs(5p-3p)\noverlap\
    \ counts > maxDiff"
  type: boolean?
  inputBinding:
    prefix: --max-diff
- id: in_int_minimum_amount
  doc: "=          int     0         Minimum amount of overhang\nbases in an overlap\
    \ to keep the\noverlap"
  type: boolean?
  inputBinding:
    prefix: --min-overhang
- id: in_int_depths_lower
  doc: "=             int     2         Depths lower than minDepth are\nconsidered\
    \ gaps"
  type: boolean?
  inputBinding:
    prefix: --min-depth
- id: in_bool_false_run
  doc: "bool    false     Run depth filter, takes a\nlittle more time"
  type: boolean?
  inputBinding:
    prefix: --gap-filt
- id: in_keep_intermediates
  doc: bool    false     set keepIntermediates
  type: boolean?
  inputBinding:
    prefix: --keepIntermediates
- id: in__nproc_int
  doc: =, --n-proc=           int     24        Number of processes to run
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_lasjsonfn_string_required
  doc: "=, --las-json-fn=      string  REQUIRED         List of las files from\nfalcon,\
    \ e.g../1-preads_\novl/las-merge-combine/la\ns_fofn.json"
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_int_minimum_number
  doc: "=               int     2                Minimum number of\noverlaps on either\
    \ side\nof a read"
  type: boolean?
  inputBinding:
    prefix: --min-cov
- id: in_debug_log_fn
  doc: =          string  "LA4Falcon.log"  Write stderr to this
  type: boolean?
  inputBinding:
    prefix: --debug-log-fn
- id: in_int_minimum_read
  doc: "=      int     400       Minimum read length; reads shorter than\nminLen will\
    \ be discarded"
  type: boolean?
  inputBinding:
    prefix: --min-len
- id: in_min_idt_pct
  doc: "=  float   96.0      Minimum overlap identity; worse overlaps\nwill be discarded"
  type: boolean?
  inputBinding:
    prefix: --min-idt-pct
- id: in_dry_run
  doc: bool    false                     set dry_run
  type: boolean?
  inputBinding:
    prefix: --dry-run
- id: in_test
  doc: bool    false                                                           set
    test
  type: boolean?
  inputBinding:
    prefix: --test
- id: in_stream
  doc: bool    false                                                           set
    stream
  type: boolean?
  inputBinding:
    prefix: --stream
- id: in_debug
  doc: bool    false                                                           set
    debug
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_silent
  doc: bool    false                                                           set
    silent
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in__string_set
  doc: =         string  ""                                           set
  type: boolean?
  inputBinding:
    prefix: --phased-read-file
- id: in_flip_rc
  doc: "bool    false     reverse complement (RC) the sequence if\nalignment is in\
    \ RC"
  type: boolean?
  inputBinding:
    prefix: --flip-rc
- id: in_out_fmt
  doc: "=      string  \"json\"    Output format of the config file. (json\nor bash)"
  type: File?
  inputBinding:
    prefix: --out-fmt
- id: in_no_sort
  doc: bool    false     set no_sort
  type: boolean?
  inputBinding:
    prefix: --no-sort
- id: in_mb_per_block
  doc: "=               int     REQUIRED                     Try to target\nmegabases\
    \ total\nin all contigs\nin any block"
  type: boolean?
  inputBinding:
    prefix: --mb-per-block
- id: in_blacklist_fn
  doc: "=               string  \"\"                           Specifies a file\n\
    with a list of\ncontigs to skip\nfor polishing."
  type: boolean?
  inputBinding:
    prefix: --blacklist-fn
- id: in_mapping_dot
  doc: 'Options:'
  type: string
  inputBinding:
    position: 0
- id: in_augmented
  doc: 'raptor-db-filter [optional-params] '
  type: string
  inputBinding:
    position: 1
- id: in_raptor_db_dot
  doc: -u, --use-umc          bool    REQUIRED  Use Unique Molecular Coverage
  type: string
  inputBinding:
    position: 0
- id: in_megabytes_dot
  doc: -a=, --alarms-fn=      string  ""        Optional JSON file to write SMRT
  type: string
  inputBinding:
    position: 0
- id: in_output_dot
  doc: 'Options:'
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
- id: in_var_63
  doc: -m=, --min-len=          int     6000      Minimum read length, reads
  type: string
  inputBinding:
    position: 0
- id: in_var_64
  doc: --min-cov=               int     2         Minimum number of overlaps on
  type: string
  inputBinding:
    position: 0
- id: in__infn_string
  doc: --in-fn=                 string  REQUIRED  M4 overlaps file
  type: string
  inputBinding:
    position: 0
- id: in_var_66
  doc: -o=, --out-fn=           string  REQUIRED  Final m4 overlaps file
  type: File
  inputBinding:
    position: 1
- id: in_var_67
  doc: '--help-syntax                                     advanced:'
  type: string
  inputBinding:
    position: 0
- id: in_var_68
  doc: -o=, --out-fn=           string  REQUIRED         Final m4 overlap file
  type: File
  inputBinding:
    position: 0
- id: in_var_69
  doc: -m=, --min-len=          int     6000      Minimum read length, reads
  type: string
  inputBinding:
    position: 0
- id: in_var_70
  doc: --min-cov=               int     2         Minimum number of overlaps on
  type: string
  inputBinding:
    position: 0
- id: in_filterlogfn_string_required
  doc: -f=, --filter-log-fn=    string  REQUIRED  Write read filter stats to this
  type: string
  inputBinding:
    position: 0
- id: in_outputfn_string_required_final
  doc: --outputFn=              string  REQUIRED  Final m4 overlap file
  type: File
  inputBinding:
    position: 1
- id: in_assembly_dot
  doc: 'stats-gff [required&optional-params] '
  type: string
  inputBinding:
    position: 0
- id: in_pb_reports_dot
  doc: 'rr-hctg-track1 [optional-params] '
  type: string
  inputBinding:
    position: 0
- id: in_var_75
  doc: help
  type: string
  inputBinding:
    position: 0
- id: in_r_readtocontigmap_string
  doc: -r=, --read-to-contig-map=  string  "./4-quiver/read_maps/read_to_contig_map"                       setread_to_cont
  type: string
  inputBinding:
    position: 1
- id: in_var_77
  doc: --rawread-ids=              string  "./2-asm-falcon/read_maps/dump_rawread_ids/rawread_ids"         set
    rawread_ids
  type: string
  inputBinding:
    position: 2
- id: in_var_78
  doc: help
  type: string
  inputBinding:
    position: 0
- id: in_partialsfn_string_set
  doc: -p=, --partials-fn=         string  "./4-quiver/track-reads/partials.json"       set
    partials_fn
  type: string
  inputBinding:
    position: 1
- id: in_var_80
  doc: --rawread-ids=              string  ""                                           set
    rawread_ids
  type: string
  inputBinding:
    position: 2
- id: in_var_81
  doc: help
  type: string
  inputBinding:
    position: 0
- id: in_ctg_name
  doc: -o=, --out-ids-fn=            string  "all_shard_ids"              If given,
    this
  type: string
  inputBinding:
    position: 1
- id: in_the_shard_prefix
  doc: .block_id files.
  type: string
  inputBinding:
    position: 0
- id: in_var_84
  doc: '--help-syntax                                  advanced:'
  type: string
  inputBinding:
    position: 0
- id: in_deprecated
  doc: 'Options:'
  type: string
  inputBinding:
    position: 0
- id: in_jobs
  doc: -s=, --shard-prefix=  string  "shard_id"  The output. Shard files are
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outputfn_string_required_bam
  doc: "=, --output-fn=  string  REQUIRED  Bam or Sam filename (based on its\nextension)"
  type: File?
  outputBinding:
    glob: $(inputs.in_outputfn_string_required_bam)
- id: out_out_fmt
  doc: "=      string  \"json\"    Output format of the config file. (json\nor bash)"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_fmt)
hints: []
cwlVersion: v1.1
baseCommand:
- falconc
- help
