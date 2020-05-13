class: CommandLineTool
id: rtg_help_childsim.cwl
inputs:
- id: father
  doc: name of the existing sample to use as the father
  type: string
  inputBinding:
    prefix: --father
- id: input
  doc: input VCF containing parent variants
  type: File
  inputBinding:
    prefix: --input
- id: mother
  doc: name of the existing sample to use as the mother
  type: string
  inputBinding:
    prefix: --mother
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
  doc: name for new child sample
  type: string
  inputBinding:
    prefix: --sample
- id: extra_crossovers
  doc: probability of extra crossovers per chromosome (Default is 0.01)
  type: double
  inputBinding:
    prefix: --extra-crossovers
- id: genetic_map_dir
  doc: if set, load genetic maps from this directory for recombination point selection
  type: string
  inputBinding:
    prefix: --genetic-map-dir
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
- id: show_crossovers
  doc: if set, display information regarding haplotype selection and crossover points
  type: boolean
  inputBinding:
    prefix: --show-crossovers
outputs: []
cwlVersion: v1.1
baseCommand:
- rtg
- help
- childsim
