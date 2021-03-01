class: CommandLineTool
id: iCount_indexstar.cwl
inputs:
- id: in_annotation
  doc: 'Annotation that defines splice junctions (default: )'
  type: boolean?
  inputBinding:
    prefix: --annotation
- id: in_overhang
  doc: "Sequence length around annotated junctions to be used by STAR when\nconstructing\
    \ splice junction database (default: 100)"
  type: boolean?
  inputBinding:
    prefix: --overhang
- id: in_overhang_min
  doc: 'TODO (default: 8)'
  type: boolean?
  inputBinding:
    prefix: --overhang_min
- id: in_threads
  doc: 'Number of threads that STAR can use for generating index (default: 1)'
  type: boolean?
  inputBinding:
    prefix: --threads
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
- id: in_genome
  doc: Genome sequence to index
  type: string
  inputBinding:
    position: 0
- id: in_genome_index
  doc: Output folder, where to store genome index
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- iCount
- indexstar
