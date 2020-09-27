class: CommandLineTool
id: vtools_evaluate.cwl
inputs:
- id: in_call_vcf
  doc: "Path to VCF with calls to be evaluated\n[required]"
  type: File
  inputBinding:
    prefix: --call-vcf
- id: in_positive_vcf
  doc: Path to VCF with known calls  [required]
  type: File
  inputBinding:
    prefix: --positive-vcf
- id: in_call_samples
  doc: "Sample(s) in call-vcf to consider. May be\ncalled multiple times  [required]"
  type: string
  inputBinding:
    prefix: --call-samples
- id: in_positive_samples
  doc: "Sample(s) in positive-vcf to consider. May be\ncalled multiple times  [required]"
  type: string
  inputBinding:
    prefix: --positive-samples
- id: in_stats
  doc: Path to output stats json file
  type: File
  inputBinding:
    prefix: --stats
- id: in_discordant_vcf
  doc: Path to output the discordant vcf file
  type: File
  inputBinding:
    prefix: --discordant-vcf
- id: in_min_qual
  doc: Minimum quality of variants to consider
  type: double
  inputBinding:
    prefix: --min-qual
- id: in_min_depth
  doc: Minimum depth of variants to consider
  type: long
  inputBinding:
    prefix: --min-depth
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_stats
  doc: Path to output stats json file
  type: File
  outputBinding:
    glob: $(inputs.in_stats)
- id: out_discordant_vcf
  doc: Path to output the discordant vcf file
  type: File
  outputBinding:
    glob: $(inputs.in_discordant_vcf)
cwlVersion: v1.1
baseCommand:
- vtools-evaluate
