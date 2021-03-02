class: CommandLineTool
id: referenceseeker_db_import.cwl
inputs:
- id: in_db
  doc: ReferenceSeeker database path
  type: File?
  inputBinding:
    prefix: --db
- id: in_genome
  doc: Genome path [Fasta, GenBank, EMBL]
  type: File?
  inputBinding:
    prefix: --genome
- id: in_id
  doc: "Unique genome identifier (default sequence id of first\nrecord)"
  type: string?
  inputBinding:
    prefix: --id
- id: in_taxonomy
  doc: Taxonomy ID (default = 12908 [unclassified sequences])
  type: long?
  inputBinding:
    prefix: --taxonomy
- id: in_status
  doc: Assembly level (default = contig)
  type: string?
  inputBinding:
    prefix: --status
- id: in_organism
  doc: "Organism name (default = \"\")\n"
  type: string?
  inputBinding:
    prefix: --organism
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- referenceseeker_db
- import
