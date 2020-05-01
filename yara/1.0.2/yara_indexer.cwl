#!/usr/bin/env cwl-runner

baseCommand:
- yara_indexer
class: CommandLineTool
cwlVersion: v1.0
id: yara_indexer
inputs:
- doc: 'Turn this option off to disable version update notifications of the application.
    One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO. Default: 1.'
  id: version_check
  inputBinding:
    prefix: --version-check
  type: boolean
- doc: Displays verbose output.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: 'Specify a filename prefix for the reference genome index. Default: use the
    filename prefix of the reference genome.'
  id: output_prefix
  inputBinding:
    prefix: --output-prefix
  type: string
- doc: 'Specify a temporary directory where to construct the index. Default: use the
    output directory.'
  id: tmp_dir
  inputBinding:
    prefix: --tmp-dir
  type: string
