class: CommandLineTool
id: download_picrust_files.py.cwl
inputs:
- id: in_verbose
  doc: "Print information during execution -- useful for\ndebugging [default: False]"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_type_of_prediction
  doc: "Type of functional predictions. Valid choices are: ko,\ncog, rfam [default:\
    \ ko]"
  type: string
  inputBinding:
    prefix: --type_of_prediction
- id: in_gg_version
  doc: "Version of GreenGenes that was used for OTU picking.\nValid choices are: 13_5,\
    \ 18may2012 [default: 13_5]"
  type: long
  inputBinding:
    prefix: --gg_version
- id: in_with_confidence
  doc: "Download confidence interval files (only available for\nGreenGenes 13_5) [default:\
    \ False]"
  type: boolean
  inputBinding:
    prefix: --with_confidence
- id: in_force
  doc: "Force download of files (i.e. overwrite existing)\n[default: False]\n"
  type: boolean
  inputBinding:
    prefix: --force
- id: in_download_pic_rust_files_do_tpy
  doc: 'Options:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- download_picrust_files.py
