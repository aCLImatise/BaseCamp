class: CommandLineTool
id: ../../../download_eggnog_data.py.cwl
inputs:
- id: install_diamond_database
  doc: Do not install the diamond database
  type: boolean
  inputBinding:
    prefix: -D
- id: assume__questions
  doc: assume "yes" to all questions
  type: boolean
  inputBinding:
    prefix: -y
- id: forces_download_exist
  doc: forces download even if the files exist
  type: boolean
  inputBinding:
    prefix: -f
- id: simulate_print_commands
  doc: simulate and print commands. Nothing is downloaded
  type: boolean
  inputBinding:
    prefix: -s
- id: quietmode
  doc: quiet_mode
  type: boolean
  inputBinding:
    prefix: -q
- id: data_dir
  doc: Directory to use for DATA_PATH.
  type: boolean
  inputBinding:
    prefix: --data_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- download_eggnog_data.py
