class: CommandLineTool
id: sparse_extract.cwl
inputs:
- id: in_it
  doc: Create empty folder structures for a new SPARSE database
  type: string
  inputBinding:
    position: 0
- id: index
  doc: Load in a list of assemblies (in RefSeq format) and index them into a SPARSE
    database
  type: string
  inputBinding:
    position: 1
- id: query
  doc: Query metadata info in a SPARSE database
  type: string
  inputBinding:
    position: 2
- id: update
  doc: Update metadata info in a SPARSE database
  type: string
  inputBinding:
    position: 3
- id: map_db
  doc: Create bowtie2 or MALT sub-databases for metagenomic reads
  type: string
  inputBinding:
    position: 4
- id: predict
  doc: Align reads onto MapDB and do taxonomic predictions, and save all outputs in
    a specified workspaces
  type: string
  inputBinding:
    position: 5
- id: mash
  doc: Compare an assembly with all genomes in a SPARSE database using MASH
  type: string
  inputBinding:
    position: 6
- id: extract
  doc: Extract species-specific reads from a SPARSE read-mapping result
  type: string
  inputBinding:
    position: 7
- id: report
  doc: 'Reformat and merge multiple SPARSE workspaces into a flat table. It also predicts
    human pathogens. '
  type: string
  inputBinding:
    position: 8
outputs: []
cwlVersion: v1.1
baseCommand:
- sparse
- extract
