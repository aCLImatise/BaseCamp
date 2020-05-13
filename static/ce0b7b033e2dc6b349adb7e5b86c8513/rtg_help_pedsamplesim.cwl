class: CommandLineTool
id: rtg_help_pedsamplesim.cwl
inputs:
- id: input
  doc: input VCF containing parent variants
  type: File
  inputBinding:
    prefix: --input
- id: output
  doc: directory for output
  type: string
  inputBinding:
    prefix: --output
- id: output_sdf
  doc: if set, output an SDF for the genome of each simulated sample
  type: boolean
  inputBinding:
    prefix: --output-sdf
- id: pedigree
  doc: genome relationships PED file
  type: File
  inputBinding:
    prefix: --pedigree
- id: reference
  doc: SDF containing the reference genome
  type: string
  inputBinding:
    prefix: --reference
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
- id: num_mutations
  doc: expected number of mutations per genome (Default is 70)
  type: long
  inputBinding:
    prefix: --num-mutations
- id: ploidy
  doc: ploidy to use. Allowed values are [auto, diploid, haploid] (Default is auto)
  type: string
  inputBinding:
    prefix: --ploidy
- id: remove_unused
  doc: if set, output only variants used by at least one sample
  type: boolean
  inputBinding:
    prefix: --remove-unused
- id: seed
  doc: seed for the random number generator
  type: long
  inputBinding:
    prefix: --seed
outputs: []
cwlVersion: v1.1
baseCommand:
- rtg
- help
- pedsamplesim
