class: CommandLineTool
id: slivar_duo_del.cwl
inputs:
- id: duo_del
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: vcf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: ped
  doc: required ped file describing the duos in the VCF
  type: string
  inputBinding:
    prefix: --ped
- id: g_notate
  doc: optional gnotate file to check for flagged variants to exclude
  type: string
  inputBinding:
    prefix: --gnotate
- id: min_sites
  doc: 'minimum number of variants required to define a region (use 1 to output all
    putative deletions) (default: 3)'
  type: long
  inputBinding:
    prefix: --min-sites
- id: min_size
  doc: 'minimum size in base-pairs of a region (default: 50)'
  type: long
  inputBinding:
    prefix: --min-size
- id: exclude
  doc: path to BED file of exclude regions e.g. (LCRs or self-chains)
  type: string
  inputBinding:
    prefix: --exclude
- id: affected_only
  doc: only output DEL calls for affected kids
  type: boolean
  inputBinding:
    prefix: --affected-only
- id: ped
  doc: required ped file describing the duos in the VCF
  type: string
  inputBinding:
    prefix: --ped
- id: g_notate
  doc: optional gnotate file to check for flagged variants to exclude
  type: string
  inputBinding:
    prefix: --gnotate
- id: min_sites
  doc: 'minimum number of variants required to define a region (use 1 to output all
    putative deletions) (default: 3)'
  type: long
  inputBinding:
    prefix: --min-sites
- id: min_size
  doc: 'minimum size in base-pairs of a region (default: 50)'
  type: long
  inputBinding:
    prefix: --min-size
- id: exclude
  doc: path to BED file of exclude regions e.g. (LCRs or self-chains)
  type: string
  inputBinding:
    prefix: --exclude
- id: affected_only
  doc: only output DEL calls for affected kids
  type: boolean
  inputBinding:
    prefix: --affected-only
outputs: []
cwlVersion: v1.1
baseCommand:
- slivar
- duo-del
