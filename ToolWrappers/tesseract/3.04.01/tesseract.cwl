class: CommandLineTool
id: tesseract.cwl
inputs:
- id: in_tess_data_dir
  doc: Specify the location of tessdata path.
  type: File?
  inputBinding:
    prefix: --tessdata-dir
- id: in_user_words
  doc: Specify the location of user words file.
  type: File?
  inputBinding:
    prefix: --user-words
- id: in_user_patterns
  doc: Specify the location of user patterns file.
  type: File?
  inputBinding:
    prefix: --user-patterns
- id: in_specify_languages_used
  doc: '[+LANG]        Specify language(s) used for OCR.'
  type: string?
  inputBinding:
    prefix: -l
- id: in_value_set_value
  doc: "=VALUE          Set value for config variables.\nMultiple -c arguments are\
    \ allowed."
  type: string?
  inputBinding:
    prefix: -c
- id: in_psm
  doc: Specify page segmentation mode.
  type: long?
  inputBinding:
    prefix: -psm
- id: in_help_psm
  doc: Show page segmentation modes.
  type: boolean?
  inputBinding:
    prefix: --help-psm
- id: in_list_langs
  doc: List available languages for tesseract engine.
  type: boolean?
  inputBinding:
    prefix: --list-langs
- id: in_print_parameters
  doc: Print tesseract parameters to stdout.
  type: boolean?
  inputBinding:
    prefix: --print-parameters
- id: in_treat_image_single
  doc: Treat the image as a single character.
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tesseract
