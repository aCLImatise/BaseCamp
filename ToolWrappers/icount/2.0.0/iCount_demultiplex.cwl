class: CommandLineTool
id: iCount_demultiplex.cwl
inputs:
- id: in_mismatches
  doc: 'Number of tolerated mismatches when comparing barcodes (default: 1)'
  type: boolean?
  inputBinding:
    prefix: --mismatches
- id: in_minimum_length
  doc: 'Minimum length of trimmed sequence to keep (default: 15)'
  type: boolean?
  inputBinding:
    prefix: --minimum_length
- id: in_prefix
  doc: 'Prefix of generated FASTQ files (default: demux)'
  type: boolean?
  inputBinding:
    prefix: --prefix
- id: in_out_dir
  doc: 'Output folder. Use local folder if none given (default: .)'
  type: Directory?
  inputBinding:
    prefix: --out_dir
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
- id: in_i_count_dot_demultiplex_dot_run
  doc: 'positional arguments:'
  type: string
  inputBinding:
    position: 0
- id: in_reads
  doc: Path to reads from a sequencing library
  type: string
  inputBinding:
    position: 1
- id: in_adapter
  doc: Adapter sequence to remove from ends of reads
  type: string
  inputBinding:
    position: 2
- id: in_barcodes
  doc: List of barcodes used for library
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: 'Output folder. Use local folder if none given (default: .)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- iCount
- demultiplex
