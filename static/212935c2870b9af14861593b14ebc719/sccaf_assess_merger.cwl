class: CommandLineTool
id: sccaf_assess_merger.cwl
inputs:
- id: input_directory
  doc: Path to input directory where asses results are
  type: string
  inputBinding:
    prefix: --input-directory
- id: rounds_file
  doc: File listing rounds ordered
  type: string
  inputBinding:
    prefix: --rounds-file
- id: output_plot
  doc: Path for merged assessment plot. Extension determines format (pdf/png).
  type: string
  inputBinding:
    prefix: --output-plot
outputs: []
cwlVersion: v1.1
baseCommand:
- sccaf-assess-merger
