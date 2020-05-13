class: CommandLineTool
id: latf_load.2.10.3.cwl
inputs:
- id: output
  doc: 'Path and Name of the output database. '
  type: File
  inputBinding:
    prefix: --output
- id: quality
  doc: 'Quality encoding (PHRED_33, PHRED_64,  LOGODDS) '
  type: boolean
  inputBinding:
    prefix: --quality
- id: tmpfs
  doc: 'Path to be used for scratch files. '
  type: File
  inputBinding:
    prefix: --tmpfs
- id: qual_quant
  doc: "Quality scores quantization level, can be  number (0: none default, 1: 2bit,\
    \ 2:  1bit), or string like  '1:10,10:20,20:30,30:-' (which is  equivalent to\
    \ 1). "
  type: string
  inputBinding:
    prefix: --qual-quant
- id: cache_size
  doc: 'Set the cache size in MB for the temporary  indices '
  type: string
  inputBinding:
    prefix: --cache-size
- id: max_rec_count
  doc: 'Set the maximum number of records to  process from the FASTQ file '
  type: string
  inputBinding:
    prefix: --max-rec-count
- id: max_err_count
  doc: 'Set the maximum number of errors to ignore  from the FASTQ file '
  type: string
  inputBinding:
    prefix: --max-err-count
- id: platform
  doc: 'Platform (ILLUMINA, LS454, SOLID,  COMPLETE_GENOMICS, HELICOS, PACBIO,  IONTORRENT,
    CAPILLARY) '
  type: boolean
  inputBinding:
    prefix: --platform
- id: max_err_pct
  doc: 'acceptable percentage of spots creation  errors, default is 5 '
  type: boolean
  inputBinding:
    prefix: --max-err-pct
- id: ignore_illumina_tags
  doc: 'ignore barcodes contained in  Illumina-formatted names '
  type: boolean
  inputBinding:
    prefix: --ignore-illumina-tags
- id: xml_log
  doc: 'produce XML-formatted log file '
  type: string
  inputBinding:
    prefix: --xml-log
- id: log_level
  doc: 'Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug)
    or  (0-6) Current/default is warn '
  type: string
  inputBinding:
    prefix: --log-level
- id: verbose
  doc: 'Increase the verbosity of the program  status messages. Use multiple times
    for more  verbosity. Negates quiet. '
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: 'Turn off all status messages for the  program. Negated by verbose. '
  type: boolean
  inputBinding:
    prefix: --quiet
- id: option_file
  doc: 'Read more options and parameters from the  file. '
  type: File
  inputBinding:
    prefix: --option-file
outputs: []
cwlVersion: v1.1
baseCommand:
- latf-load.2.10.3
