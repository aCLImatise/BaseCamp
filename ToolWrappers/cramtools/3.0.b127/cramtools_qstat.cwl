class: CommandLineTool
id: cramtools_qstat.cwl
inputs:
- id: in_default_quality_score
  doc: "Use this value as a default or missing quality score. Lowest is 0, which corresponds\
    \ to '!' in fastq. (default: 30)"
  type: boolean
  inputBinding:
    prefix: --default-quality-score
- id: in_input_file
  doc: The path to the CRAM or BAM file.
  type: boolean
  inputBinding:
    prefix: --input-file
- id: in_log_level
  doc: 'Change log level: DEBUG, INFO, WARNING, ERROR. (default: ERROR)'
  type: boolean
  inputBinding:
    prefix: --log-level
- id: in_main_class
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cramtools
- qstat
