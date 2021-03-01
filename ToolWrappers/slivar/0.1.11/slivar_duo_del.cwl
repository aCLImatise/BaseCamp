class: CommandLineTool
id: slivar_duo_del.cwl
inputs:
- id: in_ped
  doc: required ped file describing the duos in the VCF
  type: File?
  inputBinding:
    prefix: --ped
- id: in_g_notate
  doc: optional gnotate file to check for flagged variants to exclude
  type: File?
  inputBinding:
    prefix: --gnotate
- id: in_min_sites
  doc: 'minimum number of variants required to define a region (use 1 to output all
    putative deletions) (default: 3)'
  type: long?
  inputBinding:
    prefix: --min-sites
- id: in_min_size
  doc: 'minimum size in base-pairs of a region (default: 50)'
  type: long?
  inputBinding:
    prefix: --min-size
- id: in_exclude
  doc: path to BED file of exclude regions e.g. (LCRs or self-chains)
  type: File?
  inputBinding:
    prefix: --exclude
- id: in_affected_only
  doc: only output DEL calls for affected kids
  type: boolean?
  inputBinding:
    prefix: --affected-only
- id: in_sli_var
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_duo_del
  doc: ''
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
- slivar
- duo-del
