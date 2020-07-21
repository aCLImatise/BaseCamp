class: CommandLineTool
id: ../../../sparse_mash.cwl
inputs:
- id: dbname
  doc: Name for the database folder. REQUIRED.
  type: string
  inputBinding:
    prefix: --dbname
- id: query
  doc: 'A genome in fasta format, or a set of reads in fastq format. REQUIRED. '
  type: string
  inputBinding:
    prefix: --query
- id: read
  doc: Specify if query is a read set rather than an assembly.
  type: boolean
  inputBinding:
    prefix: --read
outputs: []
cwlVersion: v1.1
baseCommand:
- sparse
- mash
