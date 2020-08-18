class: CommandLineTool
id: ../../../phyluce_assembly_get_fastq_lengths.cwl
inputs:
- id: input
  doc: The directory of fastq files to summarize
  type: string
  inputBinding:
    prefix: --input
- id: csv
  doc: Give output in CSV
  type: boolean
  inputBinding:
    prefix: --csv
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_assembly_get_fastq_lengths
