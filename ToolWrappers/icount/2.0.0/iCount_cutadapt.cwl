class: CommandLineTool
id: iCount_cutadapt.cwl
inputs:
- id: in_qual_trim
  doc: 'Trim low-quality bases before adapter removal (default: None)'
  type: boolean
  inputBinding:
    prefix: --qual_trim
- id: in_ml
  doc: ", --minimum_length\nDiscard trimmed reads that are shorter than `minimum_length`\
    \ (default: None)"
  type: boolean
  inputBinding:
    prefix: -ml
- id: in__stdoutlog_threshold
  doc: ', --stdout_log     Threshold value (0-50) for logging to stdout. If 0, logging
    to stdout if turned OFF.'
  type: boolean
  inputBinding:
    prefix: -S
- id: in__filelog_threshold
  doc: ', --file_log       Threshold value (0-50) for logging to file. If 0, logging
    to file if turned OFF.'
  type: boolean
  inputBinding:
    prefix: -F
- id: in__filelogpath_path
  doc: ', --file_logpath   Path to log file.'
  type: boolean
  inputBinding:
    prefix: -P
- id: in__file_store
  doc: ', --results_file   File into which to store Metrics.'
  type: boolean
  inputBinding:
    prefix: -M
- id: in_reads
  doc: Input FASTQ file
  type: string
  inputBinding:
    position: 0
- id: in_reads_trimmed
  doc: Output FASTQ file containing trimmed reads
  type: string
  inputBinding:
    position: 1
- id: in_adapter
  doc: Sequence of an adapter ligated to the 3' end
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- iCount
- cutadapt
