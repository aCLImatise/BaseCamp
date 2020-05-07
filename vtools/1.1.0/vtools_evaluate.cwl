class: CommandLineTool
id: vtools_evaluate.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: call_vcf
  doc: Path to VCF with calls to be evaluated [required]
  type: File
  inputBinding:
    prefix: --call-vcf
- id: positive_vcf
  doc: Path to VCF with known calls  [required]
  type: File
  inputBinding:
    prefix: --positive-vcf
- id: call_samples
  doc: Sample(s) in call-vcf to consider. May be called multiple times  [required]
  type: string
  inputBinding:
    prefix: --call-samples
- id: positive_samples
  doc: Sample(s) in positive-vcf to consider. May be called multiple times  [required]
  type: string
  inputBinding:
    prefix: --positive-samples
- id: stats
  doc: Path to output stats json file
  type: File
  inputBinding:
    prefix: --stats
- id: discordant_vcf
  doc: Path to output the discordant vcf file
  type: File
  inputBinding:
    prefix: --discordant-vcf
- id: min_qual
  doc: Minimum quality of variants to consider
  type: double
  inputBinding:
    prefix: --min-qual
- id: min_depth
  doc: Minimum depth of variants to consider
  type: long
  inputBinding:
    prefix: --min-depth
outputs: []
cwlVersion: v1.1
baseCommand:
- vtools-evaluate
