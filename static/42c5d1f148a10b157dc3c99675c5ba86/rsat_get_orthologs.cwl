class: CommandLineTool
id: rsat_get_orthologs.cwl
inputs:
- id: in_unique_species
  doc: ', but at the level of the genus. At this level we'
  type: boolean
  inputBinding:
    prefix: -unique_species
- id: in_return
  doc: -return query_id,e_value,rank
  type: string
  inputBinding:
    prefix: -return
- id: in_get_orthologs
  doc: "\e[1mDESCRIPTION\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_ref_id
  doc: ID of the reference (target) gene
  type: string
  inputBinding:
    position: 0
- id: in_ref_organism
  doc: Name of the reference (target) organism
  type: string
  inputBinding:
    position: 1
- id: in_query_id
  doc: ID of the query gene
  type: string
  inputBinding:
    position: 2
- id: in_query_name
  doc: Common name of the query gene
  type: string
  inputBinding:
    position: 3
- id: in_ref_name
  doc: "Common name of the gene found in the reference genome.\n\e[1mBeware:\e[0m\
    \ this output field requires to load synonym tables\nfor all the organisms of\
    \ the reference taxon, which\nincreases the running time (a few seconds per taxon)."
  type: string
  inputBinding:
    position: 4
- id: in_query_organism
  doc: Name of the query organism
  type: string
  inputBinding:
    position: 5
- id: in_ident
  doc: Percent of identity (a number between 0 and 100)
  type: string
  inputBinding:
    position: 6
- id: in_ali_len
  doc: Alignment lengths (in residues)
  type: string
  inputBinding:
    position: 7
- id: in_mism_at
  doc: Number of mismatches
  type: string
  inputBinding:
    position: 8
- id: in_gap_open
  doc: Number of gap openings
  type: string
  inputBinding:
    position: 9
- id: in_e_value
  doc: E-value (expected number of false positives)
  type: string
  inputBinding:
    position: 10
- id: in_bit_sc
  doc: Bit score
  type: string
  inputBinding:
    position: 11
- id: in_rank
  doc: Rank
  type: string
  inputBinding:
    position: 12
- id: in_s_rank
  doc: Source rank (rank of the hit for the query organism).
  type: string
  inputBinding:
    position: 13
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rsat
- get-orthologs
