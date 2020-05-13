class: CommandLineTool
id: multiple_extract_barcodes.py.cwl
inputs:
- id: input_dir
  doc: Input directory of directories, or directory of paired fastq files. [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_dir
- id: output_dir
  doc: Base output directory to write output folders [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- multiple_extract_barcodes.py
