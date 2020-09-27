class: CommandLineTool
id: vcfrandomsample.cwl
inputs:
- id: in_rate
  doc: base sampling probability per locus
  type: string
  inputBinding:
    prefix: --rate
- id: in_scale_by
  doc: scale sampling likelihood by this Float info field
  type: double
  inputBinding:
    prefix: --scale-by
- id: in_random_seed
  doc: use this random seed (by default read from /dev/random)
  type: string
  inputBinding:
    prefix: --random-seed
- id: in_pseudorandom_seed
  doc: use a pseudorandom seed (by default read from /dev/random)
  type: boolean
  inputBinding:
    prefix: --pseudorandom-seed
- id: in_vcf_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vcfrandomsample
