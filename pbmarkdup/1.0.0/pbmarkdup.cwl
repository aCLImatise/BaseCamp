class: CommandLineTool
id: ../../../pbmarkdup.cwl
inputs:
- id: cross_library
  doc: Identify duplicates across sequencing libraries (LB tag in read group).
  type: boolean
  inputBinding:
    prefix: --cross-library
- id: rmd_up
  doc: Exclude duplicates from OUTFILE. Redundant when --dup-file is provided.
  type: boolean
  inputBinding:
    prefix: --rmdup
- id: dup_file
  doc: STR   Write duplicates to this file instead of OUTFILE.
  type: boolean
  inputBinding:
    prefix: --dup-file
- id: clobber
  doc: Overwrite OUTFILE if it exists.
  type: boolean
  inputBinding:
    prefix: --clobber
- id: num_threads
  doc: INT   Number of threads to use, 0 means autodetection. [0]
  type: boolean
  inputBinding:
    prefix: --num-threads
- id: log_level
  doc: 'STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]'
  type: boolean
  inputBinding:
    prefix: --log-level
- id: log_file
  doc: FILE  Log to a file, instead of stderr.
  type: boolean
  inputBinding:
    prefix: --log-file
- id: in_file_dot_bam_vertical_line_xml_vertical_line_f_a_vertical_line_fq_vertical_line_fof_n
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: outfile_dot_bam_vertical_line_xml_vertical_line_fado_tgz_vertical_line_fq_do_tgz
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- pbmarkdup
