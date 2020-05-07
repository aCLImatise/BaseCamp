class: CommandLineTool
id: motus.cwl
inputs:
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: taxonomic
  doc: profile     Perform a taxonomic profiling (map_tax + calc_mgc + calc_motu)
    merge       Merge different taxonomic profiles to create a table map_tax     Map
    reads to the marker gene database calc_mgc    Aggregate reads from the same marker
    gene cluster (mgc) calc_motu   From a mgc abundance table, produce the mOTU abundance
    table
  type: string
  inputBinding:
    prefix: -- Taxonomic
- id: snv
  doc: map_snv     Map reads to create bam/sam file for snv calling snv_call    SNV
    calling using metaSNV
  type: string
  inputBinding:
    prefix: -- SNV
outputs: []
cwlVersion: v1.1
baseCommand:
- motus
