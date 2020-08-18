class: CommandLineTool
id: ../../../Antisense.py.cwl
inputs:
- id: input_file_format
  doc: 'input file, format: qseq/fastq/fasta/sequence'
  type: File
  inputBinding:
    prefix: -i
- id: name_output_file
  doc: Name of the output file
  type: File
  inputBinding:
    prefix: -o
- id: length_show_one
  doc: 'Length to show in one line for fasta. [Default: show all in one line]'
  type: long
  inputBinding:
    prefix: -l
- id: would_filter_reads
  doc: Would not filter low quality reads if specified
  type: boolean
  inputBinding:
    prefix: -k
outputs: []
cwlVersion: v1.1
baseCommand:
- Antisense.py
