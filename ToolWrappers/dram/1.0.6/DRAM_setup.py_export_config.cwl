class: CommandLineTool
id: DRAM_setup.py_export_config.cwl
inputs:
- id: in_output_file
  doc: "File to save exported CONFIG file to, by default\nwillprint CONFIG (default:\
    \ None)\n"
  type: File
  inputBinding:
    prefix: --output_file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "File to save exported CONFIG file to, by default\nwillprint CONFIG (default:\
    \ None)\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- DRAM-setup.py
- export_config
