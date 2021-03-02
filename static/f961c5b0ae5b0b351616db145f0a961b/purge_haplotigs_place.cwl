class: CommandLineTool
id: purge_haplotigs_place.cwl
inputs:
- id: in_primary
  doc: Primary contigs fasta file
  type: boolean?
  inputBinding:
    prefix: -primary
- id: in_out
  doc: Placement file name. DEFAULT = ncbi_placements.tsv
  type: boolean?
  inputBinding:
    prefix: -out
- id: in_threads
  doc: Threads for Minimap2. DEFAULT = 4
  type: boolean?
  inputBinding:
    prefix: -threads
- id: in_coverage
  doc: "Coverage cutoff percentage for pairing contigs.\nDEFAULT = 50 (%)"
  type: boolean?
  inputBinding:
    prefix: -coverage
- id: in_falcon_naming
  doc: "Rename contigs in the style used by FALCON Unzip. Saved\nto <in-prefix>.FALC.fasta\n"
  type: boolean?
  inputBinding:
    prefix: -falconNaming
- id: in_h
  doc: ''
  type: string?
  inputBinding:
    prefix: -h
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- purge_haplotigs
- place
