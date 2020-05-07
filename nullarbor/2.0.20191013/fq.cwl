class: CommandLineTool
id: fq.cwl
inputs:
- id: quiet
  doc: "!        Quiet mode: no progress output (default '0')."
  type: boolean
  inputBinding:
    prefix: --quiet
- id: ref
  doc: Reference FASTA file OR size in bp (default '').
  type: string
  inputBinding:
    prefix: --ref
- id: hist
  doc: Length histogram (NO LONGER SUPPORTED) (default '0').
  type: boolean
  inputBinding:
    prefix: --hist
outputs: []
cwlVersion: v1.1
baseCommand:
- fq
