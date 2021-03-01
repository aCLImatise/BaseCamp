class: CommandLineTool
id: iCount_cutadapt.cwl
inputs:
- id: in_qual_trim
  doc: 'Trim low-quality bases before adapter removal (default: None)'
  type: boolean?
  inputBinding:
    prefix: --qual_trim
- id: in_minimum_length
  doc: 'Discard trimmed reads that are shorter than `minimum_length` (default: None)'
  type: boolean?
  inputBinding:
    prefix: --minimum_length
- id: in_stdout_log
  doc: Threshold value (0-50) for logging to stdout. If 0, logging to stdout if turned
    OFF.
  type: boolean?
  inputBinding:
    prefix: --stdout_log
- id: in_file_log
  doc: Threshold value (0-50) for logging to file. If 0, logging to file if turned
    OFF.
  type: boolean?
  inputBinding:
    prefix: --file_log
- id: in_file_log_path
  doc: Path to log file.
  type: boolean?
  inputBinding:
    prefix: --file_logpath
- id: in_results_file
  doc: File into which to store Metrics.
  type: boolean?
  inputBinding:
    prefix: --results_file
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
hints: []
cwlVersion: v1.1
baseCommand:
- iCount
- cutadapt
