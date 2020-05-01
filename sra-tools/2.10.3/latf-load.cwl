#!/usr/bin/env cwl-runner

baseCommand:
- latf-load.2
class: CommandLineTool
cwlVersion: v1.0
id: latf-load.2
inputs:
- doc: 'Path and Name of the output database. '
  id: output
  inputBinding:
    prefix: --output
  type: File
- doc: 'Quality encoding (PHRED_33, PHRED_64,  LOGODDS) '
  id: quality
  inputBinding:
    prefix: --quality
  type: boolean
- doc: 'Path to be used for scratch files. '
  id: tmpfs
  inputBinding:
    prefix: --tmpfs
  type: File
- doc: "Quality scores quantization level, can be  number (0: none default, 1: 2bit,\
    \ 2:  1bit), or string like  '1:10,10:20,20:30,30:-' (which is  equivalent to\
    \ 1). "
  id: qual_quant
  inputBinding:
    prefix: --qual-quant
  type: string
- doc: 'Set the cache size in MB for the temporary  indices '
  id: cache_size
  inputBinding:
    prefix: --cache-size
  type: string
- doc: 'Set the maximum number of records to  process from the FASTQ file '
  id: max_rec_count
  inputBinding:
    prefix: --max-rec-count
  type: string
- doc: 'Set the maximum number of errors to ignore  from the FASTQ file '
  id: max_err_count
  inputBinding:
    prefix: --max-err-count
  type: string
- doc: 'Platform (ILLUMINA, LS454, SOLID,  COMPLETE_GENOMICS, HELICOS, PACBIO,  IONTORRENT,
    CAPILLARY) '
  id: platform
  inputBinding:
    prefix: --platform
  type: boolean
- doc: 'acceptable percentage of spots creation  errors, default is 5 '
  id: max_err_pct
  inputBinding:
    prefix: --max-err-pct
  type: boolean
- doc: 'ignore barcodes contained in  Illumina-formatted names '
  id: ignore_illumina_tags
  inputBinding:
    prefix: --ignore-illumina-tags
  type: boolean
- doc: 'produce XML-formatted log file '
  id: xml_log
  inputBinding:
    prefix: --xml-log
  type: string
- doc: 'Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug)
    or  (0-6) Current/default is warn '
  id: log_level
  inputBinding:
    prefix: --log-level
  type: string
- doc: 'Increase the verbosity of the program  status messages. Use multiple times
    for more  verbosity. Negates quiet. '
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: 'Turn off all status messages for the  program. Negated by verbose. '
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: 'Read more options and parameters from the  file. '
  id: option_file
  inputBinding:
    prefix: --option-file
  type: File
