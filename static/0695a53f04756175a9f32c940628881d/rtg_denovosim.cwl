class: CommandLineTool
id: rtg_denovosim.cwl
inputs:
- id: input
  doc: input VCF containing genotype of original sample
  type: File
  inputBinding:
    prefix: --input
- id: original
  doc: name of the existing sample to use as the original genotype
  type: string
  inputBinding:
    prefix: --original
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
  doc: name for new derived sample
  type: string
  inputBinding:
    prefix: --sample
- id: no_gzip
  doc: do not gzip the output
  type: boolean
  inputBinding:
    prefix: --no-gzip
- id: num_mutations
  doc: expected number of de novo mutations per genome (Default is 70)
  type: long
  inputBinding:
    prefix: --num-mutations
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
- id: show_mutations
  doc: if set, display information regarding de novo mutation points
  type: boolean
  inputBinding:
    prefix: --show-mutations
outputs: []
cwlVersion: v1.1
baseCommand:
- rtg
- denovosim
