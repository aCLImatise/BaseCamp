class: CommandLineTool
id: erne_map.cwl
inputs:
- id: in_reference
  doc: "reference file to use (in our format and with\n.ebh extension) [REQUIRED]"
  type: File
  inputBinding:
    prefix: --reference
- id: in_query_one
  doc: "query1 file (can be compressed with gzip or\nbzip2, or a pipe) [REQUIRED]"
  type: long
  inputBinding:
    prefix: --query1
- id: in_query_two
  doc: "optional query2 file (can be compressed with\ngzip or bzip2, or a pipe)"
  type: long
  inputBinding:
    prefix: --query2
- id: in_output
  doc: "BAM/SAM output file (default: SAM format)\n[REQUIRED]"
  type: File
  inputBinding:
    prefix: --output
- id: in_fast
  doc: "PRESET 1: Use base qualities to improve speed.\nOnly slightly less sensitive\
    \ (and much faster)\nthan --sensitive. This is the default.\nEquivalent to --q\
    \ 15 --cl 500"
  type: boolean
  inputBinding:
    prefix: --fast
- id: in_sensitive
  doc: "PRESET 2: High sensitivity and low speed.\nEquivalent to --q 0 --cl 500"
  type: boolean
  inputBinding:
    prefix: --sensitive
- id: in_ultra_sensitive
  doc: "PRESET 3: Maximum sensitivity, but really low\nspeed. Equivalent to --ignore-quality\
    \ --cl 0."
  type: boolean
  inputBinding:
    prefix: --ultra-sensitive
- id: in_contamination_reference
  doc: "reference file to use for contamination check\n(in ERNE format)"
  type: File
  inputBinding:
    prefix: --contamination-reference
- id: in_sam
  doc: output file in SAM format instead of BAM format
  type: File
  inputBinding:
    prefix: --sam
- id: in_force_illumina
  doc: "force ILLUMINA 1.3+ FASTQ format (default:\nauto-detect)"
  type: boolean
  inputBinding:
    prefix: --force-illumina
- id: in_force_standard
  doc: "force standard SANGER FASTQ format (default:\nauto-detect)"
  type: boolean
  inputBinding:
    prefix: --force-standard
- id: in_threads
  doc: maximum number of allowed threads (default 1)
  type: long
  inputBinding:
    prefix: --threads
- id: in_auto_errors
  doc: obsolete (legacy option)
  type: boolean
  inputBinding:
    prefix: --auto-errors
- id: in_errors_rate
  doc: "change automatically error rate (default 15,\nmust be >= 5)"
  type: long
  inputBinding:
    prefix: --errors-rate
- id: in_errors_per_base
  doc: "alternative to errors-rate: number of errors\nper base in the range [0,0.2[\
    \ (equal to\n1/errors-rate)"
  type: long
  inputBinding:
    prefix: --errors-per-base
- id: in_errors
  doc: 'errors allowed (>= 0, default: auto-errors)'
  type: long
  inputBinding:
    prefix: --errors
- id: in_delta
  doc: DELTA value (default 0)
  type: long
  inputBinding:
    prefix: --delta
- id: in_no_indels
  doc: 'disable indels in read alignment. Default:'
  type: boolean
  inputBinding:
    prefix: --no-indels
- id: in_fragment_size_min
  doc: "minimum fragment size for proper pair (default:\nnone, if --fragment-size-max\
    \ is defined, it is\noptional and default is 0)"
  type: long
  inputBinding:
    prefix: --fragment-size-min
- id: in_fragment_size_max
  doc: "maximum fragment size for proper pair (default:\nnone, required if --fragment-size-min\
    \ is\ndefined)"
  type: long
  inputBinding:
    prefix: --fragment-size-max
- id: in_sample
  doc: sample name
  type: string
  inputBinding:
    prefix: --sample
- id: in_no_auto_trim
  doc: disable automatic trim
  type: boolean
  inputBinding:
    prefix: --no-auto-trim
- id: in_min_phred_value_mott
  doc: "minimum value used by Mott-like trimming\n(default 20)"
  type: long
  inputBinding:
    prefix: --min-phred-value-mott
- id: in_min_mean_phred_quality
  doc: "minimum mean value to accept a (trimmed)\nsequence (default 20)"
  type: long
  inputBinding:
    prefix: --min-mean-phred-quality
- id: in_min_size
  doc: min length for a sequence (default 25)
  type: long
  inputBinding:
    prefix: --min-size
- id: in_gap
  doc: Efficiently search 1 gap (see
  type: boolean
  inputBinding:
    prefix: --gap
- id: in_ref_insertion_max_gap
  doc: "maximum value for an insertion in the reference\n(default: 100)"
  type: long
  inputBinding:
    prefix: --ref-insertion-max-gap
- id: in_ref_deletion_max_gap
  doc: "maximum value for a deletion in the reference\n(default: 20)"
  type: long
  inputBinding:
    prefix: --ref-deletion-max-gap
- id: in_print_all
  doc: "print all possible alignments, see manual for\noutput syntax [only for single-end\
    \ reads]"
  type: boolean
  inputBinding:
    prefix: --print-all
- id: in_print_at_most
  doc: "print at most the number of specified\nalignments, see manual for output syntax\
    \ [only\nfor single-end reads]"
  type: long
  inputBinding:
    prefix: --print-at-most
- id: in_seed_errors
  doc: "Maximum number of errors allowed in the seed.\nDefault: 2."
  type: long
  inputBinding:
    prefix: --seed-errors
- id: in_mismatch_inserted_inpositions
  doc: "Mismatch are inserted in the seed only in\npositions where base quality <\
    \ q. Default: 15.\nWith value 0 quality values are ignored."
  type: long
  inputBinding:
    prefix: --q
- id: in_disable_quality_strategy
  doc: "Disable quality-aware strategy if a read is not\nfound, then search again.\
    \ Default: disabled\n(quality-aware strategy always on)"
  type: boolean
  inputBinding:
    prefix: --disable-quality-strategy
- id: in_ignore_quality
  doc: "Ignore quality values during search (equivalent\nto --q 0). Default: disabled."
  type: boolean
  inputBinding:
    prefix: --ignore-quality
- id: in_cl
  doc: "Search the hash collision lists up to this\ndepth (value 0 means no limit).\
    \ Default: 50.\nOnly for dB-hash (.ebh reference files).\n"
  type: long
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
- id: out_output
  doc: "BAM/SAM output file (default: SAM format)\n[REQUIRED]"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
- id: out_sam
  doc: output file in SAM format instead of BAM format
  type: File
  outputBinding:
    glob: $(inputs.in_sam)
cwlVersion: v1.1
baseCommand:
- erne-map
