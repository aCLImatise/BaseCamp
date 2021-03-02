class: CommandLineTool
id: DRAM_setup.py_import_config.cwl
inputs:
- id: in_config_loc
  doc: "CONFIG file to replace current CONFIG with (default:\nNone)\n"
  type: File?
  inputBinding:
    prefix: --config_loc
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- DRAM-setup.py
- import_config
