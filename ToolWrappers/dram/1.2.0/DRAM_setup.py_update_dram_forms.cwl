class: CommandLineTool
id: DRAM_setup.py_update_dram_forms.cwl
inputs:
- id: in_output_dir
  doc: "Directory to store newly downloaded files, may want\nthis to be the same directory\
    \ as the rest of your DRAM\ndatabase files (default: None)\n"
  type: Directory?
  inputBinding:
    prefix: --output_dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dram:1.2.0--py_0
cwlVersion: v1.1
baseCommand:
- DRAM-setup.py
- update_dram_forms
