class: CommandLineTool
id: iCount_mapstar.cwl
inputs:
- id: in__annotation_gtf
  doc: ', --annotation     GTF annotation needed for mapping to splice-junctions (default:
    )'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_multimax
  doc: 'Number of allowed multiple hits (default: 10)'
  type: boolean
  inputBinding:
    prefix: --multimax
- id: in_mis
  doc: ', --mismatches   Number of allowed mismatches (default: 2)'
  type: boolean
  inputBinding:
    prefix: -mis
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
- id: in_reads
  doc: Sequencing reads to map to genome
  type: string
  inputBinding:
    position: 0
- id: in_genome_index
  doc: Folder with genome index
  type: string
  inputBinding:
    position: 1
- id: in_out_dir
  doc: Output folder, where to store mapping results
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
- mapstar
