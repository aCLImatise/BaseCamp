class: CommandLineTool
id: hmmgs_merge.cwl
inputs:
- id: in_all
  doc: "Generate all combinations for multiple\npaths, instead of just the best"
  type: boolean
  inputBinding:
    prefix: --all
- id: in_min_bits
  doc: Minimum bits score
  type: long
  inputBinding:
    prefix: --min-bits
- id: in_min_length
  doc: Minimum length
  type: long
  inputBinding:
    prefix: --min-length
- id: in_out
  doc: Write output to file instead of stdout
  type: File
  inputBinding:
    prefix: --out
- id: in_short_sample_name
  doc: "short sample name, to be used as part of\ncontig identifiers. This allow analyzing\n\
    contigs together from different samples in\ndownstream analysis\n"
  type: string
  inputBinding:
    prefix: --short_samplename
- id: in_usage
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Write output to file instead of stdout
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- hmmgs
- merge
