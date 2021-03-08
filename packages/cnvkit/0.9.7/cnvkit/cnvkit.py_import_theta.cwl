class: CommandLineTool
id: ../../../cnvkit.py_import_theta.cwl
inputs:
- id: in_ploidy
  doc: 'Ploidy of normal cells. [Default: 2]'
  type: long
  inputBinding:
    prefix: --ploidy
- id: in_output_dir
  doc: "Output directory name.\n"
  type: Directory
  inputBinding:
    prefix: --output-dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "Output directory name.\n"
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- cnvkit.py
- import-theta
