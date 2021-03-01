class: CommandLineTool
id: sccaf_assess_merger.cwl
inputs:
- id: in_input_directory
  doc: Path to input directory where asses results are
  type: Directory?
  inputBinding:
    prefix: --input-directory
- id: in_rounds_file
  doc: File listing rounds ordered
  type: File?
  inputBinding:
    prefix: --rounds-file
- id: in_output_plot
  doc: "Path for merged assessment plot. Extension determines\nformat (pdf/png).\n"
  type: File?
  inputBinding:
    prefix: --output-plot
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sccaf-assess-merger
