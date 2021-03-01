class: CommandLineTool
id: sparse_mash.cwl
inputs:
- id: in_dbname
  doc: Name for the database folder. REQUIRED.
  type: Directory?
  inputBinding:
    prefix: --dbname
- id: in_query
  doc: A genome in fasta format, or a set of reads in fastq format. REQUIRED.
  type: string?
  inputBinding:
    prefix: --query
- id: in_read
  doc: Specify if query is a read set rather than an assembly.
  type: boolean?
  inputBinding:
    prefix: --read
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sparse
- mash
