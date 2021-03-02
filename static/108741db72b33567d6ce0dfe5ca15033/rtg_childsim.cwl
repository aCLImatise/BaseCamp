class: CommandLineTool
id: rtg_childsim.cwl
inputs:
- id: in_father
  doc: name of the existing sample to use as the father
  type: string?
  inputBinding:
    prefix: --father
- id: in_input
  doc: input VCF containing parent variants
  type: File?
  inputBinding:
    prefix: --input
- id: in_mother
  doc: name of the existing sample to use as the mother
  type: string?
  inputBinding:
    prefix: --mother
- id: in_output
  doc: output VCF file name
  type: File?
  inputBinding:
    prefix: --output
- id: in_output_sdf
  doc: if set, output an SDF containing the sample
  type: string?
  inputBinding:
    prefix: --output-sdf
- id: in_sample
  doc: name for new child sample
  type: string?
  inputBinding:
    prefix: --sample
- id: in_extra_crossovers
  doc: "probability of extra crossovers per chromosome\n(Default is 0.01)"
  type: double?
  inputBinding:
    prefix: --extra-crossovers
- id: in_genetic_map_dir
  doc: "if set, load genetic maps from this directory\nfor recombination point selection"
  type: Directory?
  inputBinding:
    prefix: --genetic-map-dir
- id: in_no_gzip
  doc: do not gzip the output
  type: boolean?
  inputBinding:
    prefix: --no-gzip
- id: in_ploidy
  doc: "ploidy to use. Allowed values are [auto,\ndiploid, haploid] (Default is auto)"
  type: string?
  inputBinding:
    prefix: --ploidy
- id: in_seed
  doc: seed for the random number generator
  type: long?
  inputBinding:
    prefix: --seed
- id: in_sex
  doc: "sex of individual. Allowed values are [male,\nfemale, either] (Default is\
    \ either)"
  type: string?
  inputBinding:
    prefix: --sex
- id: in_show_crossovers
  doc: "if set, display information regarding haplotype\nselection and crossover points\n"
  type: boolean?
  inputBinding:
    prefix: --show-crossovers
- id: in_genome
  doc: -t, --reference=SDF          SDF containing the reference genome
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output VCF file name
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rtg-tools:3.12--0
cwlVersion: v1.1
baseCommand:
- rtg
- childsim
