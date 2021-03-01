class: CommandLineTool
id: download_eggnog_data.py.cwl
inputs:
- id: in_install_diamond_database
  doc: Do not install the diamond database
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_assume__questions
  doc: assume "yes" to all questions
  type: boolean?
  inputBinding:
    prefix: -y
- id: in_forces_download_exist
  doc: forces download even if the files exist
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_simulate_print_commands
  doc: simulate and print commands. Nothing is downloaded
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_quietmode
  doc: quiet_mode
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_data_dir
  doc: Directory to use for DATA_PATH.
  type: boolean?
  inputBinding:
    prefix: --data_dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- download_eggnog_data.py
