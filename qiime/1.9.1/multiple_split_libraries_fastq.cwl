class: CommandLineTool
id: multiple_split_libraries_fastq.py.cwl
inputs:
- id: input_dir
  doc: Input directory of directories or fastq files. [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_dir
- id: output_dir
  doc: Output directory to write split_libraries_fastq.py results [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- multiple_split_libraries_fastq.py
