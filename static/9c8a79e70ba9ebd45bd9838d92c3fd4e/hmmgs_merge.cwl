class: CommandLineTool
id: hmmgs_merge.cwl
inputs:
- id: all
  doc: Generate all combinations for multiple paths, instead of just the best
  type: boolean
  inputBinding:
    prefix: --all
- id: min_bits
  doc: Minimum bits score
  type: string
  inputBinding:
    prefix: --min-bits
- id: min_length
  doc: Minimum length
  type: string
  inputBinding:
    prefix: --min-length
- id: out
  doc: Write output to file instead of stdout
  type: string
  inputBinding:
    prefix: --out
- id: short_sample_name
  doc: short sample name, to be used as part of contig identifiers. This allow analyzing
    contigs together from different samples in downstream analysis
  type: string
  inputBinding:
    prefix: --short_samplename
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmgs
- merge
