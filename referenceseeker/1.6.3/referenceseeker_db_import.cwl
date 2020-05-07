class: CommandLineTool
id: referenceseeker_db_import.cwl
inputs:
- id: db
  doc: ReferenceSeeker database path
  type: string
  inputBinding:
    prefix: --db
- id: genome
  doc: Genome path [Fasta, GenBank, EMBL]
  type: string
  inputBinding:
    prefix: --genome
- id: id
  doc: Unique genome identifier (default sequence id of first record)
  type: string
  inputBinding:
    prefix: --id
- id: taxonomy
  doc: Taxonomy ID (default = 12908 [unclassified sequences])
  type: string
  inputBinding:
    prefix: --taxonomy
- id: status
  doc: Assembly level (default = contig)
  type: string
  inputBinding:
    prefix: --status
- id: organism
  doc: Organism name (default = "")
  type: string
  inputBinding:
    prefix: --organism
outputs: []
cwlVersion: v1.1
baseCommand:
- referenceseeker_db
- import
