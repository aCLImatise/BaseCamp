#!/usr/bin/env cwl-runner

baseCommand:
- vcfrandomsample
class: CommandLineTool
cwlVersion: v1.0
id: vcfrandomsample
inputs:
- doc: ''
  id: vcf_file
  inputBinding:
    position: 0
  type: string
- doc: base sampling probability per locus
  id: rate
  inputBinding:
    prefix: --rate
  type: string
- doc: scale sampling likelihood by this Float info field
  id: scale_by
  inputBinding:
    prefix: --scale-by
  type: string
- doc: use this random seed (by default read from /dev/random)
  id: random_seed
  inputBinding:
    prefix: --random-seed
  type: string
- doc: use a pseudorandom seed (by default read from /dev/random)
  id: pseudorandom_seed
  inputBinding:
    prefix: --pseudorandom-seed
  type: boolean
