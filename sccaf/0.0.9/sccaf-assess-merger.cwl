#!/usr/bin/env cwl-runner

baseCommand:
- sccaf-assess-merger
class: CommandLineTool
cwlVersion: v1.0
id: sccaf-assess-merger
inputs:
- doc: Path to input directory where asses results are
  id: input_directory
  inputBinding:
    prefix: --input-directory
  type: string
- doc: File listing rounds ordered
  id: rounds_file
  inputBinding:
    prefix: --rounds-file
  type: string
- doc: Path for merged assessment plot. Extension determines format (pdf/png).
  id: output_plot
  inputBinding:
    prefix: --output-plot
  type: string
