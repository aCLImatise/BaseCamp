class: CommandLineTool
id: annotate.py.cwl
inputs:
- id: input
  doc: Input file. Must a valid FASTA contigs file (post- assembly).
  type: string
  inputBinding:
    prefix: --input
- id: database
  doc: Database name. Must be in abacat.CONFIG.py db parameter.
  type: string
  inputBinding:
    prefix: --database
- id: blast
  doc: Blast method. Choose from 'blastn', 'blastp' or 'blastx'. Default is 'blastn'
  type: string
  inputBinding:
    prefix: --blast
- id: evalue
  doc: E-value for BLAST. Default is the one set in abacat/config.py
  type: string
  inputBinding:
    prefix: --evalue
outputs: []
cwlVersion: v1.1
baseCommand:
- annotate.py
