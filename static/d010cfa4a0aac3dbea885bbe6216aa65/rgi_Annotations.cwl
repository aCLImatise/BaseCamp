class: CommandLineTool
id: rgi_Annotations.cwl
inputs:
- id: in_load
  doc: Loads CARD database, annotations and k-mer database
  type: string
  inputBinding:
    position: 0
- id: in_clean
  doc: Removes BLAST databases and temporary files
  type: string
  inputBinding:
    position: 1
- id: in_galaxy
  doc: Galaxy project wrapper
  type: string
  inputBinding:
    position: 0
- id: in_main
  doc: Runs rgi application
  type: string
  inputBinding:
    position: 0
- id: in_tab
  doc: Creates a Tab-delimited from rgi results
  type: string
  inputBinding:
    position: 1
- id: in_parser
  doc: Creates categorical JSON files RGI wheel visualization
  type: string
  inputBinding:
    position: 2
- id: in_heat_map
  doc: Heatmap for multiple analysis
  type: string
  inputBinding:
    position: 3
- id: in_bwt
  doc: Align reads to CARD and in silico predicted allelic variants (beta)
  type: string
  inputBinding:
    position: 0
- id: in_tm
  doc: Baits Melting Temperature
  type: string
  inputBinding:
    position: 0
- id: in_card_annotation
  doc: Create fasta files with annotations from card.json
  type: string
  inputBinding:
    position: 0
- id: in_wildcard_annotation
  doc: Create fasta files with annotations from variants
  type: string
  inputBinding:
    position: 1
- id: in_baits_annotation
  doc: Create fasta files with annotations from baits (experimental)
  type: string
  inputBinding:
    position: 2
- id: in_remove_duplicates
  doc: Removes duplicate sequences (experimental)
  type: string
  inputBinding:
    position: 3
- id: in_km_er_build
  doc: Build AMR specific k-mers database used for pathogen of origin (beta)
  type: string
  inputBinding:
    position: 0
- id: in_km_er_query
  doc: Query sequences against AMR k-mers database to predict pathogen of origin (beta)
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rgi
- Annotations
