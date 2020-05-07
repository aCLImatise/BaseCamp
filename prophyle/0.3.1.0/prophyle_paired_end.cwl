class: CommandLineTool
id: prophyle_paired_end.py_reads_1.cwl
inputs:
- id: reads_1
  doc: 1st FASTA or FASTQ file
  type: string
  inputBinding:
    position: 0
- id: reads_2
  doc: 2nd FASTA or FASTQ file
  type: string
  inputBinding:
    position: 1
- id: output_file
  doc: output file [stdout]
  type: string
  inputBinding:
    prefix: --output-file
outputs: []
cwlVersion: v1.1
baseCommand:
- prophyle_paired_end.py
- reads_1
