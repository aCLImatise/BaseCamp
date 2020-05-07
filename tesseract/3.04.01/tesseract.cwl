class: CommandLineTool
id: tesseract.cwl
inputs:
- id: tess_data_dir
  doc: Specify the location of tessdata path.
  type: File
  inputBinding:
    prefix: --tessdata-dir
- id: user_words
  doc: Specify the location of user words file.
  type: File
  inputBinding:
    prefix: --user-words
- id: user_patterns
  doc: Specify the location of user patterns file.
  type: File
  inputBinding:
    prefix: --user-patterns
- id: l
  doc: '[+LANG]        Specify language(s) used for OCR.'
  type: string
  inputBinding:
    prefix: -l
- id: c
  doc: =VALUE          Set value for config variables. Multiple -c arguments are allowed.
  type: string
  inputBinding:
    prefix: -c
- id: psm
  doc: Specify page segmentation mode.
  type: string
  inputBinding:
    prefix: -psm
- id: help_psm
  doc: Show page segmentation modes.
  type: boolean
  inputBinding:
    prefix: --help-psm
- id: list_langs
  doc: List available languages for tesseract engine.
  type: boolean
  inputBinding:
    prefix: --list-langs
- id: print_parameters
  doc: Print tesseract parameters to stdout.
  type: boolean
  inputBinding:
    prefix: --print-parameters
outputs: []
cwlVersion: v1.1
baseCommand:
- tesseract
