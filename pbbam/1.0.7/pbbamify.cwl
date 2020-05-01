#!/usr/bin/env cwl-runner

baseCommand:
- pbbamify
class: CommandLineTool
cwlVersion: v1.0
id: pbbamify
inputs:
- doc: FILE  The aligned non-PacBio BAM file. If not provided, stdin will be used
    as input.
  id: input
  inputBinding:
    prefix: --input
  type: boolean
- doc: FILE  Path to the output BAM file. If not specified, output will be to the
    stdout.
  id: output
  inputBinding:
    prefix: --output
  type: boolean
- doc: INT   Specifies the level of info which will be output produced on stderr.
    0 turns all output off, 1 outputs only warnings, while levels 2 and above outputs
    a status message every 1000000 (2), 100000 (3), 1000 (4), 100 (5), 10 (6) and
    1 (7) reads. [3]
  id: verbose_level
  inputBinding:
    prefix: --verbose-level
  type: boolean
- doc: 'STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [INFO]'
  id: log_level
  inputBinding:
    prefix: --log-level
  type: boolean
- doc: FILE  Log to a file, instead of stderr.
  id: log_file
  inputBinding:
    prefix: --log-file
  type: boolean
