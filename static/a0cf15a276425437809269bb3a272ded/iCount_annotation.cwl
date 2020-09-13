class: CommandLineTool
id: ../../../iCount_annotation.cwl
inputs:
- id: in__release_release
  doc: ', --release        Release number. Only ENSEMBL releases 59-88 are available
    (default: 88)'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_od
  doc: ', --out_dir       Download to this directory (if not given, current working
    directory) (default: None)'
  type: boolean
  inputBinding:
    prefix: -od
- id: in__annotation_filename
  doc: ", --annotation     Annotation filename (must have .gz file extension). If\
    \ not given,\nspecies.release.gtf.gz is used. If annotation is provided as absolute\n\
    path, value of out_dir parameter is ignored and file is saved to given\nabsolute\
    \ path (default: None)"
  type: boolean
  inputBinding:
    prefix: -a
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
- id: in_species
  doc: Species latin name
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- iCount
- annotation
