class: CommandLineTool
id: erne_filter.cwl
inputs:
- id: in_contamination_reference
  doc: "reference file to use (in our format and with\n.ebh extension)"
  type: File?
  inputBinding:
    prefix: --contamination-reference
- id: in_query_one
  doc: "query1 file (can be compressed with gzip or\nbzip2, or a pipe) [REQUIRED]"
  type: long?
  inputBinding:
    prefix: --query1
- id: in_query_two
  doc: "optional query2 file (can be compressed with\ngzip or bzip2, or a pipe)"
  type: long?
  inputBinding:
    prefix: --query2
- id: in_output_prefix
  doc: output prefix [REQUIRED]
  type: string?
  inputBinding:
    prefix: --output-prefix
- id: in_fast
  doc: "PRESET 1: Use base qualities to improve speed.\nOnly slightly less sensitive\
    \ (and much faster)\nthan --sensitive. This is the default.\nEquivalent to --q\
    \ 15 --cl 500"
  type: boolean?
  inputBinding:
    prefix: --fast
- id: in_sensitive
  doc: "PRESET 2: High sensitivity and low speed.\nEquivalent to --q 15 --cl 500\n\
    --disable-quality-strategy. This is\napproximately 5 times slower than --fast."
  type: boolean?
  inputBinding:
    prefix: --sensitive
- id: in_ultra_sensitive
  doc: "PRESET 3: Maximum sensitivity, but really low\nspeed. Equivalent to --ignore-quality\
    \ --cl 0."
  type: boolean?
  inputBinding:
    prefix: --ultra-sensitive
- id: in_no_indels
  doc: 'disable indels in read alignment. Default:'
  type: boolean?
  inputBinding:
    prefix: --no-indels
- id: in_gzip
  doc: "compress output with gzip (.gz suffix will be\nadded to the output files"
  type: boolean?
  inputBinding:
    prefix: --gzip
- id: in_bzip_two
  doc: "compress output with bzip2 (.bz2 suffix will be\nadded to the output files"
  type: boolean?
  inputBinding:
    prefix: --bzip2
- id: in_threads
  doc: maximum number of allowed threads (default 1)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_force_illumina
  doc: "force ILLUMINA 1.3+ FASTQ format (default:\nauto-detect)"
  type: boolean?
  inputBinding:
    prefix: --force-illumina
- id: in_force_standard
  doc: "force standard SANGER FASTQ format (default:\nauto-detect)"
  type: boolean?
  inputBinding:
    prefix: --force-standard
- id: in_auto_errors
  doc: obsolete (legacy options)
  type: boolean?
  inputBinding:
    prefix: --auto-errors
- id: in_errors_rate
  doc: set error rate (default 15)
  type: long?
  inputBinding:
    prefix: --errors-rate
- id: in_errors
  doc: fixed number of errors allowed, disable
  type: long?
  inputBinding:
    prefix: --errors
- id: in_no_auto_trim
  doc: disable automatic trimming
  type: boolean?
  inputBinding:
    prefix: --no-auto-trim
- id: in_min_phred_value_mott
  doc: "minimum value used by Mott-like trimming\n(default 20)"
  type: long?
  inputBinding:
    prefix: --min-phred-value-mott
- id: in_min_mean_phred_quality
  doc: "minimum mean value to accept a (trimmed)\nsequence (default 20)"
  type: long?
  inputBinding:
    prefix: --min-mean-phred-quality
- id: in_min_size
  doc: "minimum sequence length after trimming (default\n25)"
  type: long?
  inputBinding:
    prefix: --min-size
- id: in_preserve_encoding
  doc: preserve input encoding
  type: boolean?
  inputBinding:
    prefix: --preserve-encoding
- id: in_mismatch_inserted_inpositions
  doc: "Mismatch are inserted in the seed only in\npositions where base quality <\
    \ q. Default: 15.\nWith value 0 quality values are ignored."
  type: long?
  inputBinding:
    prefix: --q
- id: in_disable_quality_strategy
  doc: "Disable quality-aware strategy if a read is not\nfound, then search again.\
    \ Default: disabled\n(quality-aware strategy always on)"
  type: boolean?
  inputBinding:
    prefix: --disable-quality-strategy
- id: in_ignore_quality
  doc: "Ignore quality values during search (equivalent\nto --q 0). Default: disabled."
  type: boolean?
  inputBinding:
    prefix: --ignore-quality
- id: in_cl
  doc: "Search the hash collision lists up to this\ndepth (value 0 means no limit).\
    \ Default: 50.\nOnly for dB-hash (.ebh reference files).\n"
  type: long?
  inputBinding:
    prefix: --cl
- id: in_disabled_dot
  doc: '--indels-max arg              max base pairs indels value (default: 10)'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- erne-filter
