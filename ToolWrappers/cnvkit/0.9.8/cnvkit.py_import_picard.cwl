class: CommandLineTool
id: cnvkit.py_import_picard.cwl
inputs:
- id: in_output_dir
  doc: "Output directory name.\n"
  type: Directory?
  inputBinding:
    prefix: --output-dir
- id: in_targets
  doc: Sample coverage .csv files (target and antitarget).
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "Output directory name.\n"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cnvkit:0.9.8--py_0
cwlVersion: v1.1
baseCommand:
- cnvkit.py
- import-picard
