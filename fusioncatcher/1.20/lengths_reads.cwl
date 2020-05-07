class: CommandLineTool
id: lengths_reads.py.cwl
inputs:
- id: input
  doc: The input file in FASTQ Solexa file (also given thru stdin or as gzipped file).
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: The output text file containg the unique lengths of the reads found in the
    input file. The unique lengths are sorted in descending order.
  type: string
  inputBinding:
    prefix: --output
- id: counts
  doc: The output text file containg the counts of reads found in the input file.
  type: string
  inputBinding:
    prefix: --counts
outputs: []
cwlVersion: v1.1
baseCommand:
- lengths_reads.py
