class: CommandLineTool
id: vcfrandomsample.cwl
inputs:
- id: vcf_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: rate
  doc: base sampling probability per locus
  type: string
  inputBinding:
    prefix: --rate
- id: scale_by
  doc: scale sampling likelihood by this Float info field
  type: string
  inputBinding:
    prefix: --scale-by
- id: random_seed
  doc: use this random seed (by default read from /dev/random)
  type: string
  inputBinding:
    prefix: --random-seed
- id: pseudorandom_seed
  doc: use a pseudorandom seed (by default read from /dev/random)
  type: boolean
  inputBinding:
    prefix: --pseudorandom-seed
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfrandomsample
