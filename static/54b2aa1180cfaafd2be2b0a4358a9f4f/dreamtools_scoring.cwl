class: CommandLineTool
id: dreamtools_scoring.cwl
inputs:
- id: in_challenge
  doc: "alias of the challenge (e.g., D8C1 stands fordream8\nchallenge 1)."
  type: long
  inputBinding:
    prefix: --challenge
- id: in_sub_challenge
  doc: Name of the data files
  type: string
  inputBinding:
    prefix: --sub-challenge
- id: in_verbose
  doc: verbose option.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_submission
  doc: "[FILENAME [FILENAME ...]]\nsubmission/filename to score."
  type: boolean
  inputBinding:
    prefix: --submission
- id: in_filename
  doc: "[FILENAME [FILENAME ...]]\nsubmission/filename to score."
  type: boolean
  inputBinding:
    prefix: --filename
- id: in_gold_standard
  doc: "a gold standard filename. This may be required in some\nchallenges e.g. D2C3"
  type: File
  inputBinding:
    prefix: --gold-standard
- id: in_on_web
  doc: Open synapse project page in a browser
  type: boolean
  inputBinding:
    prefix: --onweb
- id: in_info
  doc: Prints general information about the challenge
  type: boolean
  inputBinding:
    prefix: --info
- id: in_download_template
  doc: "Download template. Templates for challenge may be\ndownloaded using this option.\
    \ It returns the path to\ntemplate."
  type: boolean
  inputBinding:
    prefix: --download-template
- id: in_download_gold_standard
  doc: "Download a gold standard, which can be used as a\nsubmissions as well. It\
    \ returns the location of the\nfile."
  type: boolean
  inputBinding:
    prefix: --download-gold-standard
- id: in_usage
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dreamtools-scoring
