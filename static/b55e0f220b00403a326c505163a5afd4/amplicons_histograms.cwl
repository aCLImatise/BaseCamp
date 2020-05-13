class: CommandLineTool
id: amplicons_histograms.py.cwl
inputs:
- id: amplicons_file_path
  doc: Target amplicons files.  Separate multiple files with a colon. [REQUIRED]
  type: string
  inputBinding:
    prefix: --amplicons_filepath
outputs: []
cwlVersion: v1.1
baseCommand:
- amplicons_histograms.py
