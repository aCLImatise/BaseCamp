class: CommandLineTool
id: rtg_help_samplesim.cwl
inputs:
- id: input
  doc: input VCF containing population variants
  type: File
  inputBinding:
    prefix: --input
- id: output
  doc: output VCF file name
  type: File
  inputBinding:
    prefix: --output
- id: output_sdf
  doc: if set, output an SDF containing the sample genome
  type: string
  inputBinding:
    prefix: --output-sdf
- id: reference
  doc: SDF containing the reference genome
  type: string
  inputBinding:
    prefix: --reference
- id: sample
  doc: name for sample
  type: string
  inputBinding:
    prefix: --sample
- id: allow_missing_af
  doc: set, treat variants without allele frequency annotation as uniformly likely
  type: string
  inputBinding:
    prefix: --allow-missing-af
- id: no_gzip
  doc: do not gzip the output
  type: boolean
  inputBinding:
    prefix: --no-gzip
- id: ploidy
  doc: ploidy to use. Allowed values are [auto, diploid, haploid] (Default is auto)
  type: string
  inputBinding:
    prefix: --ploidy
- id: seed
  doc: seed for the random number generator
  type: long
  inputBinding:
    prefix: --seed
- id: sex
  doc: sex of individual. Allowed values are [male, female, either] (Default is either)
  type: string
  inputBinding:
    prefix: --sex
outputs: []
cwlVersion: v1.1
baseCommand:
- rtg
- help
- samplesim
