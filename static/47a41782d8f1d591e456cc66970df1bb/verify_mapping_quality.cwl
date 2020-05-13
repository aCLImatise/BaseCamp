class: CommandLineTool
id: verify_mapping_quality.pl.cwl
inputs:
- id: output
  doc: Path to write human readable report
  type: boolean
  inputBinding:
    prefix: --output
- id: out_strains
  doc: Path to write list of strain(s) one per line for filter File collection tool
    or vcf2snvalignment itself
  type: boolean
  inputBinding:
    prefix: --out_strains
outputs: []
cwlVersion: v1.1
baseCommand:
- verify_mapping_quality.pl
