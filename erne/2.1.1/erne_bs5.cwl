class: CommandLineTool
id: erne_bs5.cwl
inputs:
- id: reference
  doc: reference file to use (in our format and with  .ebm extension). [REQUIRED]
  type: string
  inputBinding:
    prefix: --reference
- id: query_1
  doc: query1 file (can be compressed with gzip or  bzip2, or a pipe) [REQUIRED]
  type: string
  inputBinding:
    prefix: --query1
- id: query_2
  doc: optional query2 file (can be compressed with  gzip or bzip2, or a pipe)
  type: string
  inputBinding:
    prefix: --query2
- id: output
  doc: BAM output file (other files are created  depending on other options) [REQUIRED]
  type: string
  inputBinding:
    prefix: --output
- id: fast
  doc: 'PRESET 1: Use base qualities to improve speed.  Only slightly less sensitive
    (and much faster)  than --sensitive. This is the default.  Equivalent to --q 15
    --cl 500'
  type: boolean
  inputBinding:
    prefix: --fast
- id: sensitive
  doc: 'PRESET 2: High sensitivity and low speed.  Equivalent to --q 0 --cl 500 '
  type: boolean
  inputBinding:
    prefix: --sensitive
- id: ultra_sensitive
  doc: 'PRESET 3: Maximum sensitivity, but really low  speed. Equivalent to --ignore-quality
    --cl 0.'
  type: boolean
  inputBinding:
    prefix: --ultra-sensitive
- id: threads
  doc: maximum number of allowed threads (default 1)
  type: string
  inputBinding:
    prefix: --threads
- id: sam
  doc: output file in SAM format instead of BAM format
  type: boolean
  inputBinding:
    prefix: --sam
- id: force_illumina
  doc: 'force ILLUMINA 1.3+ FASTQ format (default:  auto-detect)'
  type: boolean
  inputBinding:
    prefix: --force-illumina
- id: force_standard
  doc: 'force standard SANGER FASTQ format (default:  auto-detect)'
  type: boolean
  inputBinding:
    prefix: --force-standard
- id: auto_errors
  doc: obsolete (legacy option)
  type: boolean
  inputBinding:
    prefix: --auto-errors
- id: errors_rate
  doc: change automatically error rate (default 15,  must be >= 5)
  type: string
  inputBinding:
    prefix: --errors-rate
- id: errors
  doc: 'errors allowed (>= 0, default: auto-errors)'
  type: string
  inputBinding:
    prefix: --errors
- id: delta
  doc: DELTA value (default 0)
  type: string
  inputBinding:
    prefix: --delta
- id: no_indels
  doc: 'disable indels in read alignment. Default:  disabled.'
  type: boolean
  inputBinding:
    prefix: --no-indels
- id: indels_max
  doc: 'max base pairs indels value (default: 10)'
  type: string
  inputBinding:
    prefix: --indels-max
- id: fragment_size_min
  doc: 'minimum fragment size for proper pair (default:  none, if --fragment-size-max
    is defined, it is  optional and default is 0)'
  type: string
  inputBinding:
    prefix: --fragment-size-min
- id: fragment_size_max
  doc: 'maximum fragment size for proper pair (default:  none, required if --fragment-size-min
    is  defined)'
  type: string
  inputBinding:
    prefix: --fragment-size-max
- id: sample
  doc: sample name
  type: string
  inputBinding:
    prefix: --sample
- id: no_auto_trim
  doc: disable automatic trim
  type: boolean
  inputBinding:
    prefix: --no-auto-trim
- id: min_phred_value_mott
  doc: minimum value used by Mott-like trimming  (default 20)
  type: string
  inputBinding:
    prefix: --min-phred-value-mott
- id: min_mean_phred_quality
  doc: minimum mean value to accept a (trimmed)  sequence (default 20)
  type: string
  inputBinding:
    prefix: --min-mean-phred-quality
- id: min_size
  doc: min length for a sequence (default 25)
  type: string
  inputBinding:
    prefix: --min-size
- id: gap
  doc: Efficiently search 1 gap (see  --ref-insertion-max-gap and  --ref-deletion-max-gap)
  type: boolean
  inputBinding:
    prefix: --gap
- id: ref_insertion_max_gap
  doc: 'maximum value for an insertion in the reference  (default: 100)'
  type: string
  inputBinding:
    prefix: --ref-insertion-max-gap
- id: ref_deletion_max_gap
  doc: 'maximum value for a deletion in the reference  (default: 20)'
  type: string
  inputBinding:
    prefix: --ref-deletion-max-gap
- id: print_all
  doc: print all possible alignments [only for  single-end reads]
  type: boolean
  inputBinding:
    prefix: --print-all
- id: seed_errors
  doc: 'Maximum number of errors allowed in the seed.  Default: 2.'
  type: string
  inputBinding:
    prefix: --seed-errors
- id: q
  doc: 'Mismatch are inserted in the seed only in  positions where base quality <
    q. Default: 15.  With value 0 quality values are ignored.'
  type: string
  inputBinding:
    prefix: --q
- id: disable_quality_strategy
  doc: 'Disable quality-aware strategy if a read is not  found, then search again.
    Default: disabled  (quality-aware strategy always on)'
  type: boolean
  inputBinding:
    prefix: --disable-quality-strategy
- id: ignore_quality
  doc: 'Ignore quality values during search (equivalent  to --q 0). Default: disabled.'
  type: boolean
  inputBinding:
    prefix: --ignore-quality
- id: cl
  doc: 'Search the hash collision lists up to this depth (value 0 means no limit).
    Default: 500.'
  type: string
  inputBinding:
    prefix: --cl
outputs: []
cwlVersion: v1.1
baseCommand:
- erne-bs5
