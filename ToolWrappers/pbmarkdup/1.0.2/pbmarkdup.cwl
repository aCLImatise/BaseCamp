class: CommandLineTool
id: pbmarkdup.cwl
inputs:
- id: in_cross_library
  doc: Identify duplicates across sequencing libraries (LB tag in read group).
  type: boolean?
  inputBinding:
    prefix: --cross-library
- id: in_rmd_up
  doc: Exclude duplicates from OUTFILE. Redundant when --dup-file is provided.
  type: boolean?
  inputBinding:
    prefix: --rmdup
- id: in_dup_file
  doc: STR   Write duplicates to this file instead of OUTFILE.
  type: boolean?
  inputBinding:
    prefix: --dup-file
- id: in_clobber
  doc: Overwrite OUTFILE if it exists.
  type: boolean?
  inputBinding:
    prefix: --clobber
- id: in_num_threads
  doc: INT   Number of threads to use, 0 means autodetection. [0]
  type: boolean?
  inputBinding:
    prefix: --num-threads
- id: in_log_level
  doc: 'STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]'
  type: boolean?
  inputBinding:
    prefix: --log-level
- id: in_log_file
  doc: FILE  Log to a file, instead of stderr.
  type: boolean?
  inputBinding:
    prefix: --log-file
- id: in_in_file_dot_bam_vertical_line_xml_vertical_line_f_a_vertical_line_fq_vertical_line_fof_n
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_outfile_dot_bam_vertical_line_xml_vertical_line_fado_tgz_vertical_line_fq_do_tgz
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_str
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 3
- id: in_as
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_bam
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pbmarkdup:1.0.2--0
cwlVersion: v1.1
baseCommand:
- pbmarkdup
