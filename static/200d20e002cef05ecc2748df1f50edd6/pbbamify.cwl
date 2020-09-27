class: CommandLineTool
id: pbbamify.cwl
inputs:
- id: in_input
  doc: FILE  The aligned non-PacBio BAM file. If not provided, stdin will be used
    as input.
  type: boolean
  inputBinding:
    prefix: --input
- id: in_output
  doc: FILE  Path to the output BAM file. If not specified, output will be to the
    stdout.
  type: File
  inputBinding:
    prefix: --output
- id: in_verbose_level
  doc: "INT   Specifies the level of info which will be output produced on stderr.\
    \ 0 turns all output off, 1\noutputs only warnings, while levels 2 and above outputs\
    \ a status message every 1000000 (2),\n100000 (3), 1000 (4), 100 (5), 10 (6) and\
    \ 1 (7) reads. [3]"
  type: boolean
  inputBinding:
    prefix: --verbose-level
- id: in_log_level
  doc: 'STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [INFO]'
  type: boolean
  inputBinding:
    prefix: --log-level
- id: in_log_file
  doc: FILE  Log to a file, instead of stderr.
  type: boolean
  inputBinding:
    prefix: --log-file
- id: in_ref_dot_fa
  doc: FILE  Reference used to align the input.
  type: string
  inputBinding:
    position: 0
- id: in_in_dot_bam
  doc: 'FILE  Input file(s). Maybe one of: DataSetXML, BAM file(s), or FOFN'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: FILE  Path to the output BAM file. If not specified, output will be to the
    stdout.
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- pbbamify
