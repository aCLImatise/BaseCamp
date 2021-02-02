class: CommandLineTool
id: hartemink2psp.cwl
inputs:
- id: in_mod
  doc: "|zoops|tcm   create MEME prior for given model\ndefault: zoops"
  type: string
  inputBinding:
    prefix: -mod
- id: in_epsilon
  doc: "use epsilon value to rescale scores\nfrom [0..1] to [epsilon..1-epsilon]\n\
    before converting to MEME priors\ndefault: 1e-200"
  type: double
  inputBinding:
    prefix: -epsilon
- id: in_rev_comp
  doc: "double-stranded Hartemink prior\ndefault: single-stranded"
  type: boolean
  inputBinding:
    prefix: -revcomp
- id: in_width
  doc: motif width used to construct prior
  type: string
  inputBinding:
    prefix: -width
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hartemink2psp
