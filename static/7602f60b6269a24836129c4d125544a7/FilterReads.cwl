class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/FilterReads.py.cwl
inputs:
- id: name_input_qseqfastqfastasequence
  doc: Name of the input qseq/fastq/fasta/sequence file
  type: File
  inputBinding:
    prefix: -i
- id: name_output_file
  doc: Name of the output file
  type: File
  inputBinding:
    prefix: -o
- id: would_filter_reads
  doc: Would not filter low quality reads if specified, only applied for qseq format
  type: boolean
  inputBinding:
    prefix: -k
outputs: []
cwlVersion: v1.1
baseCommand:
- FilterReads.py
