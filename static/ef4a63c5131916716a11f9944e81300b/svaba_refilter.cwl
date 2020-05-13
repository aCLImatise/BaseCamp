class: CommandLineTool
id: svaba_refilter.cwl
inputs:
- id: lod
  doc: LOD cutoff to classify indel as non-REF (tests AF=0 vs AF=MaxLikelihood(AF))
    [8]
  type: boolean
  inputBinding:
    prefix: --lod
- id: lod_dbsnp
  doc: LOD cutoff to classify indel as non-REF (tests AF=0 vs AF=MaxLikelihood(AF))
    at DBSnp indel site [5]
  type: boolean
  inputBinding:
    prefix: --lod-dbsnp
- id: lod_somatic
  doc: LOD cutoff to classify indel as somatic (tests AF=0 in normal vs AF=ML(0.5))
    [2.5]
  type: boolean
  inputBinding:
    prefix: --lod-somatic
- id: lod_somatic_dbsnp
  doc: LOD cutoff to classify indel as somatic (tests AF=0 in normal vs AF=ML(0.5))
    at DBSnp indel site [4]
  type: boolean
  inputBinding:
    prefix: --lod-somatic-dbsnp
- id: scale_errors
  doc: Scale the priors that a site is artifact at given repeat count. 0 means assume
    low (const) error rate [1]
  type: boolean
  inputBinding:
    prefix: --scale-errors
- id: read_tracking
  doc: Track supporting reads by qname. Increases file sizes. [off]
  type: boolean
  inputBinding:
    prefix: --read-tracking
outputs: []
cwlVersion: v1.1
baseCommand:
- svaba
- refilter
