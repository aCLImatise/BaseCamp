class: CommandLineTool
id: megalodon_extras_variants_heterozygous_factor.cwl
inputs:
- id: in_calls_dot
  doc: megalodon_variants    VCF file containing diploid variant calls from
  type: string
  inputBinding:
    position: 1
- id: in_megalodon_dot
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- megalodon_extras
- variants
- heterozygous_factor
