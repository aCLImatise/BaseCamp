class: CommandLineTool
id: annotate.py.cwl
inputs:
- id: in_input
  doc: "Input file. Must a valid FASTA contigs file (post-\nassembly)."
  type: File
  inputBinding:
    prefix: --input
- id: in_database
  doc: "Database name. Must be in abacat.CONFIG.py db\nparameter."
  type: string
  inputBinding:
    prefix: --database
- id: in_blast
  doc: "Blast method. Choose from 'blastn', 'blastp' or\n'blastx'. Default is 'blastn'"
  type: string
  inputBinding:
    prefix: --blast
- id: in_evalue
  doc: "E-value for BLAST. Default is the one set in\nabacat/config.py\n"
  type: string
  inputBinding:
    prefix: --evalue
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- annotate.py
