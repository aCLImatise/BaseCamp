class: CommandLineTool
id: nucleoatac_merge.cwl
inputs:
- id: in_occ_peaks
  doc: Output from occ utility
  type: File?
  inputBinding:
    prefix: --occpeaks
- id: in_nuc_pos
  doc: Output from nuc utility
  type: File?
  inputBinding:
    prefix: --nucpos
- id: in_sep
  doc: minimum separation between call
  type: long?
  inputBinding:
    prefix: --sep
- id: in_min_occ
  doc: "minimum lower bound occupancy of nucleosomes to be\nconsidered for excluding\
    \ NFR. default is 0.1\n"
  type: long?
  inputBinding:
    prefix: --min_occ
- id: in_optional
  doc: --out out_basename    output file basename
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nucleoatac
- merge
