class: CommandLineTool
id: iCount_mapstar.cwl
inputs:
- id: in_annotation
  doc: 'GTF annotation needed for mapping to splice-junctions (default: )'
  type: boolean?
  inputBinding:
    prefix: --annotation
- id: in_multimax
  doc: 'Number of allowed multiple hits (default: 10)'
  type: boolean?
  inputBinding:
    prefix: --multimax
- id: in_mismatches
  doc: 'Number of allowed mismatches (default: 2)'
  type: boolean?
  inputBinding:
    prefix: --mismatches
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
hints: []
cwlVersion: v1.1
baseCommand:
- iCount
- mapstar
