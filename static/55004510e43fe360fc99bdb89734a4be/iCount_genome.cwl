class: CommandLineTool
id: iCount_genome.cwl
inputs:
- id: in_release
  doc: 'Release number. Only ENSEMBL releases 59-88 are available (default: 88)'
  type: boolean?
  inputBinding:
    prefix: --release
- id: in_out_dir
  doc: 'Download to this directory (if not given, current working directory) (default:
    None)'
  type: boolean?
  inputBinding:
    prefix: --out_dir
- id: in_genome
  doc: "Genome filename (must have .gz file extension). If not given,\nspecies.release.fa.gz\
    \ is used. If genome is provided as absolute path,\nvalue of out_dir parameter\
    \ is ignored and file is saved to given\nabsolute path (default: None)"
  type: boolean?
  inputBinding:
    prefix: --genome
- id: in_chromosomes
  doc: "[ ...]\nIf given, do not download the whole genome, but listed\nchromosomes\
    \ only. Chromosomes can be given as strings or integers (default: None)"
  type: boolean?
  inputBinding:
    prefix: --chromosomes
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- iCount
- genome
