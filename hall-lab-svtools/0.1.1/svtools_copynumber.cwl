class: CommandLineTool
id: svtools_copynumber.cwl
inputs:
- id: input_vcf
  doc: VCF input
  type: string
  inputBinding:
    prefix: --input_vcf
- id: coordinates
  doc: BED input
  type: string
  inputBinding:
    prefix: --coordinates
- id: root
  doc: CNVnator .root histogram file (required)
  type: string
  inputBinding:
    prefix: --root
- id: window
  doc: CNVnator window size (required)
  type: string
  inputBinding:
    prefix: --window
- id: sample
  doc: sample to annotate
  type: string
  inputBinding:
    prefix: --sample
- id: cnv_nator
  doc: path to cnvnator-multi binary
  type: string
  inputBinding:
    prefix: --cnvnator
- id: output_vcf
  doc: 'compressed(.gz) output VCF to write (default: stdout)'
  type: string
  inputBinding:
    prefix: --output_vcf
- id: debug
  doc: debugging verbosity
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- svtools
- copynumber
