class: CommandLineTool
id: nucleoatac_merge.cwl
inputs:
- id: occ_peaks
  doc: Output from occ utility
  type: string
  inputBinding:
    prefix: --occpeaks
- id: nuc_pos
  doc: Output from nuc utility
  type: string
  inputBinding:
    prefix: --nucpos
- id: out
  doc: output file basename
  type: string
  inputBinding:
    prefix: --out
- id: sep
  doc: minimum separation between call
  type: long
  inputBinding:
    prefix: --sep
- id: min_occ
  doc: minimum lower bound occupancy of nucleosomes to be considered for excluding
    NFR. default is 0.1
  type: long
  inputBinding:
    prefix: --min_occ
outputs: []
cwlVersion: v1.1
baseCommand:
- nucleoatac
- merge
