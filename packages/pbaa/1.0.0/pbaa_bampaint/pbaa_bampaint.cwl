class: CommandLineTool
id: pbaa_bampaint.cwl
inputs:
- id: in_num_threads
  doc: INT   Number of threads to use, 0 means autodetection. [0]
  type: boolean?
  inputBinding:
    prefix: --num-threads
- id: in_log_level
  doc: "STR   Set log level. Valid choices: (TRACE, DEBUG, INFO,\nWARN, FATAL). [WARN]"
  type: boolean?
  inputBinding:
    prefix: --log-level
- id: in_log_file
  doc: FILE  Log to a file, instead of stderr.
  type: boolean?
  inputBinding:
    prefix: --log-file
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_4
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_5
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_read_info_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_var_7
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_info
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_input_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_var_10
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: in_var_11
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_var_12
  doc: ''
  type: File
  inputBinding:
    position: 3
- id: in_var_13
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_var_14
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_information
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_add
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_color
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_produced
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_by
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_pba_a
  doc: ''
  type: string
  inputBinding:
    position: 9
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pbaa:1.0.0--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- pbaa
- bampaint
