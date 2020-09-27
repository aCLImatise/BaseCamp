class: CommandLineTool
id: o_generate_html_output.cwl
inputs:
- id: in_output_directory
  doc: Output directory for HTML output to be stored
  type: Directory
  inputBinding:
    prefix: --output-directory
- id: in_entropy_figure
  doc: "Path for entropy figure *without* the file extension\n(e.g. only \"/path/to/entropy\"\
    \ for\n\"/path/to/entropy.png\")\n"
  type: File
  inputBinding:
    prefix: --entropy-figure
- id: in_dict
  doc: Serialized run info dictionary (RUNINFO.cPickle)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: Output directory for HTML output to be stored
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory)
cwlVersion: v1.1
baseCommand:
- o-generate-html-output
