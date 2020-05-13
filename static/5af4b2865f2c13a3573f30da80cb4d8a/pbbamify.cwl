class: CommandLineTool
id: pbbamify.cwl
inputs:
- id: input
  doc: FILE  The aligned non-PacBio BAM file. If not provided, stdin will be used
    as input.
  type: boolean
  inputBinding:
    prefix: --input
- id: output
  doc: FILE  Path to the output BAM file. If not specified, output will be to the
    stdout.
  type: boolean
  inputBinding:
    prefix: --output
- id: verbose_level
  doc: INT   Specifies the level of info which will be output produced on stderr.
    0 turns all output off, 1 outputs only warnings, while levels 2 and above outputs
    a status message every 1000000 (2), 100000 (3), 1000 (4), 100 (5), 10 (6) and
    1 (7) reads. [3]
  type: boolean
  inputBinding:
    prefix: --verbose-level
- id: log_level
  doc: 'STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [INFO]'
  type: boolean
  inputBinding:
    prefix: --log-level
- id: log_file
  doc: FILE  Log to a file, instead of stderr.
  type: boolean
  inputBinding:
    prefix: --log-file
outputs: []
cwlVersion: v1.1
baseCommand:
- pbbamify
