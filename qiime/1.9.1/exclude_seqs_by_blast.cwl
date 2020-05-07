class: CommandLineTool
id: exclude_seqs_by_blast.py.cwl
inputs:
- id: query_db
  doc: The path to a FASTA file containing query sequences [REQUIRED]
  type: string
  inputBinding:
    prefix: --querydb
- id: subject_db
  doc: The path to a FASTA file to BLAST against [REQUIRED]
  type: string
  inputBinding:
    prefix: --subjectdb
- id: output_dir
  doc: The output directory [REQUIRED]
  type: string
  inputBinding:
    prefix: --outputdir
outputs: []
cwlVersion: v1.1
baseCommand:
- exclude_seqs_by_blast.py
