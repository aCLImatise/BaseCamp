#!/usr/bin/env cwl-runner

baseCommand:
- o-generate-html-output
class: CommandLineTool
cwlVersion: v1.0
id: o-generate-html-output
inputs:
- doc: Output directory for HTML output to be stored
  id: output_directory
  inputBinding:
    prefix: --output-directory
  type: string
- doc: Path for entropy figure *without* the file extension (e.g. only "/path/to/entropy"
    for "/path/to/entropy.png")
  id: entropy_figure
  inputBinding:
    prefix: --entropy-figure
  type: string
