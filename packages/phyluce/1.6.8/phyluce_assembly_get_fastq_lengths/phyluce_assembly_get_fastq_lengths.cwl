class: CommandLineTool
id: phyluce_assembly_get_fastq_lengths.cwl
inputs:
- id: in_input
  doc: The directory of fastq files to summarize
  type: Directory
  inputBinding:
    prefix: --input
- id: in_csv
  doc: Give output in CSV
  type: boolean
  inputBinding:
    prefix: --csv
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyluce_assembly_get_fastq_lengths
