class: CommandLineTool
id: load_remote_mapping_file.py.cwl
inputs:
- id: spreadsheet_key
  doc: the spreadsheet key that will be used to identify the Google Spreadsheet to
    load. This is the part of the Google Spreadsheet URL that comes after 'key='.
    You may instead provide the entire URL and the key will be extracted from it.
    If you provide the entire URL, you may need to enclose it in single quotes [REQUIRED]
  type: string
  inputBinding:
    prefix: --spreadsheet_key
- id: output_fp
  doc: the output filepath [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- load_remote_mapping_file.py
