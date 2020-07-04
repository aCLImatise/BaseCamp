class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/motus_merge.cwl
inputs:
- id: profile
  doc: Perform a taxonomic profiling (map_tax + calc_mgc + calc_motu)
  type: string
  inputBinding:
    position: 0
- id: merge
  doc: Merge different taxonomic profiles to create a table
  type: string
  inputBinding:
    position: 1
- id: map_tax
  doc: Map reads to the marker gene database
  type: string
  inputBinding:
    position: 2
- id: calc_mgc
  doc: Aggregate reads from the same marker gene cluster (mgc)
  type: string
  inputBinding:
    position: 3
- id: calc_motu
  doc: From a mgc abundance table, produce the mOTU abundance table
  type: string
  inputBinding:
    position: 4
- id: map_snv
  doc: Map reads to create bam/sam file for snv calling
  type: string
  inputBinding:
    position: 0
- id: snv_call
  doc: SNV calling using metaSNV
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- motus
- merge
