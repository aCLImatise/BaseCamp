class: CommandLineTool
id: erne_filter.cwl
inputs:
- id: contamination_reference
  doc: reference file to use (in our format and with  .ebh extension)
  type: string
  inputBinding:
    prefix: --contamination-reference
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
- id: output_prefix
  doc: output prefix [REQUIRED]
  type: string
  inputBinding:
    prefix: --output-prefix
- id: fast
  doc: 'PRESET 1: Use base qualities to improve speed.  Only slightly less sensitive
    (and much faster)  than --sensitive. This is the default.  Equivalent to --q 15
    --cl 500'
  type: boolean
  inputBinding:
    prefix: --fast
- id: sensitive
  doc: 'PRESET 2: High sensitivity and low speed.  Equivalent to --q 15 --cl 500  --disable-quality-strategy.
    This is  approximately 5 times slower than --fast.'
  type: boolean
  inputBinding:
    prefix: --sensitive
- id: ultra_sensitive
  doc: 'PRESET 3: Maximum sensitivity, but really low  speed. Equivalent to --ignore-quality
    --cl 0.'
  type: boolean
  inputBinding:
    prefix: --ultra-sensitive
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
- id: gzip
  doc: compress output with gzip (.gz suffix will be  added to the output files
  type: boolean
  inputBinding:
    prefix: --gzip
- id: bzip2
  doc: compress output with bzip2 (.bz2 suffix will be added to the output files
  type: boolean
  inputBinding:
    prefix: --bzip2
- id: threads
  doc: maximum number of allowed threads (default 1)
  type: string
  inputBinding:
    prefix: --threads
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
  doc: obsolete (legacy options)
  type: boolean
  inputBinding:
    prefix: --auto-errors
- id: errors_rate
  doc: set error rate (default 15)
  type: string
  inputBinding:
    prefix: --errors-rate
- id: errors
  doc: fixed number of errors allowed, disable  --errors-rate (>= 0)
  type: string
  inputBinding:
    prefix: --errors
- id: no_auto_trim
  doc: disable automatic trimming
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
  doc: minimum sequence length after trimming (default 25)
  type: string
  inputBinding:
    prefix: --min-size
- id: preserve_encoding
  doc: preserve input encoding
  type: boolean
  inputBinding:
    prefix: --preserve-encoding
- id: q
  doc: 'Mismatch are inserted in the seed only in  positions where base quality <
    q. Default: 15.  With value 0 quality values are ignored.'
  type: string
  inputBinding:
    prefix: --q
- id: disable_quality_strategy
  doc: 'Disable quality-aware strategy if a read is not found, then search again.
    Default: disabled  (quality-aware strategy always on)'
  type: boolean
  inputBinding:
    prefix: --disable-quality-strategy
- id: ignore_quality
  doc: 'Ignore quality values during search (equivalent to --q 0). Default: disabled.'
  type: boolean
  inputBinding:
    prefix: --ignore-quality
- id: cl
  doc: 'Search the hash collision lists up to this  depth (value 0 means no limit).
    Default: 50.  Only for dB-hash (.ebh reference files).'
  type: string
  inputBinding:
    prefix: --cl
outputs: []
cwlVersion: v1.1
baseCommand:
- erne-filter
