class: CommandLineTool
id: motus_merge.cwl
inputs:
- id: in_profile
  doc: Perform a taxonomic profiling (map_tax + calc_mgc + calc_motu)
  type: string
  inputBinding:
    position: 0
- id: in_merge
  doc: Merge different taxonomic profiles to create a table
  type: string
  inputBinding:
    position: 1
- id: in_map_tax
  doc: Map reads to the marker gene database
  type: string
  inputBinding:
    position: 2
- id: in_calc_mgc
  doc: Aggregate reads from the same marker gene cluster (mgc)
  type: string
  inputBinding:
    position: 3
- id: in_calc_motu
  doc: From a mgc abundance table, produce the mOTU abundance table
  type: string
  inputBinding:
    position: 4
- id: in_map_snv
  doc: Map reads to create bam/sam file for snv calling
  type: string
  inputBinding:
    position: 0
- id: in_snv_call
  doc: SNV calling using metaSNV
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- motus
- merge
