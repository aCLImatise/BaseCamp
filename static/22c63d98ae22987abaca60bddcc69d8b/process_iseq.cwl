class: CommandLineTool
id: process_iseq.py.cwl
inputs:
- id: input_fps
  doc: the input filepaths (either iseq or gzipped iseq format; comma-separated if
    more than one). See Processing Illumina Data tutorial for a description of the
    iseq file type. [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_fps
- id: output_dir
  doc: the output directory [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
- id: barcode_length
  doc: length of the barcode [REQUIRED]
  type: string
  inputBinding:
    prefix: --barcode_length
outputs: []
cwlVersion: v1.1
baseCommand:
- process_iseq.py
