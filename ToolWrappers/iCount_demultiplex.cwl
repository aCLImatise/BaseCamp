class: CommandLineTool
id: iCount_demultiplex.cwl
inputs:
- id: in_mis
  doc: ', --mismatches   Number of tolerated mismatches when comparing barcodes (default:
    1)'
  type: boolean
  inputBinding:
    prefix: -mis
- id: in_ml
  doc: ", --minimum_length\nMinimum length of trimmed sequence to keep (default: 15)"
  type: boolean
  inputBinding:
    prefix: -ml
- id: in_prefix
  doc: 'Prefix of generated FASTQ files (default: demux)'
  type: boolean
  inputBinding:
    prefix: --prefix
- id: in_od
  doc: ', --out_dir       Output folder. Use local folder if none given (default:
    .)'
  type: Directory
  inputBinding:
    prefix: -od
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
- id: out_od
  doc: ', --out_dir       Output folder. Use local folder if none given (default:
    .)'
  type: Directory
  outputBinding:
    glob: $(inputs.in_od)
cwlVersion: v1.1
baseCommand:
- iCount
- demultiplex
