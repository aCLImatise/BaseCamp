class: CommandLineTool
id: rtg_samplesim.cwl
inputs:
- id: in_input
  doc: input VCF containing population variants
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: output VCF file name
  type: File?
  inputBinding:
    prefix: --output
- id: in_output_sdf
  doc: if set, output an SDF containing the sample genome
  type: string?
  inputBinding:
    prefix: --output-sdf
- id: in_reference
  doc: SDF containing the reference genome
  type: string?
  inputBinding:
    prefix: --reference
- id: in_sample
  doc: name for sample
  type: string?
  inputBinding:
    prefix: --sample
- id: in_allow_missing_af
  doc: "set, treat variants without allele frequency\nannotation as uniformly likely"
  type: string?
  inputBinding:
    prefix: --allow-missing-af
- id: in_no_gzip
  doc: do not gzip the output
  type: boolean?
  inputBinding:
    prefix: --no-gzip
- id: in_ploidy
  doc: "ploidy to use. Allowed values are [auto, diploid,\nhaploid] (Default is auto)"
  type: string?
  inputBinding:
    prefix: --ploidy
- id: in_seed
  doc: seed for the random number generator
  type: long?
  inputBinding:
    prefix: --seed
- id: in_sex
  doc: "sex of individual. Allowed values are [male, female,\neither] (Default is\
    \ either)\n"
  type: string?
  inputBinding:
    prefix: --sex
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
- samplesim
