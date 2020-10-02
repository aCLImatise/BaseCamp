class: CommandLineTool
id: iCount_indexstar.cwl
inputs:
- id: in__annotation_annotation
  doc: ', --annotation     Annotation that defines splice junctions (default: )'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_overhang
  doc: "Sequence length around annotated junctions to be used by STAR when\nconstructing\
    \ splice junction database (default: 100)"
  type: boolean
  inputBinding:
    prefix: --overhang
- id: in_overhang_min
  doc: 'TODO (default: 8)'
  type: boolean
  inputBinding:
    prefix: --overhang_min
- id: in_threads
  doc: 'Number of threads that STAR can use for generating index (default: 1)'
  type: boolean
  inputBinding:
    prefix: --threads
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
cwlVersion: v1.1
baseCommand:
- iCount
- indexstar
