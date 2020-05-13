class: CommandLineTool
id: download_eggnog_data.py.cwl
inputs:
- id: d
  doc: Do not install the diamond database
  type: boolean
  inputBinding:
    prefix: -D
- id: y
  doc: assume "yes" to all questions
  type: boolean
  inputBinding:
    prefix: -y
- id: f
  doc: forces download even if the files exist
  type: boolean
  inputBinding:
    prefix: -f
- id: s
  doc: simulate and print commands. Nothing is downloaded
  type: boolean
  inputBinding:
    prefix: -s
- id: q
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
