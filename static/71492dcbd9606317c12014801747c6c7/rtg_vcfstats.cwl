class: CommandLineTool
id: rtg_vcfstats.cwl
inputs:
- id: allele_lengths
  doc: variant length histogram
  type: string
  inputBinding:
    prefix: --allele-lengths
outputs: []
cwlVersion: v1.1
baseCommand:
- rtg
- vcfstats
