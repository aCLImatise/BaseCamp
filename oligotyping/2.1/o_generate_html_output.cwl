class: CommandLineTool
id: o_generate_html_output.cwl
inputs:
- id: output_directory
  doc: Output directory for HTML output to be stored
  type: string
  inputBinding:
    prefix: --output-directory
- id: entropy_figure
  doc: Path for entropy figure *without* the file extension (e.g. only "/path/to/entropy"
    for "/path/to/entropy.png")
  type: string
  inputBinding:
    prefix: --entropy-figure
outputs: []
cwlVersion: v1.1
baseCommand:
- o-generate-html-output
