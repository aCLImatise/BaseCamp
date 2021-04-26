class: CommandLineTool
id: megalodon_extras_variants_atomize.cwl
inputs:
- id: in_out_vcf
  doc: 'Output VCF file. Default:'
  type: File?
  inputBinding:
    prefix: --out-vcf
- id: in_in_vcf
  doc: Proposed varitants (VCF)
  type: string
  inputBinding:
    position: 0
- id: in_reference
  doc: "Reference FASTA or minimap2 index file corresponding\nto VCF."
  type: string
  inputBinding:
    position: 1
- id: in_atomized_variants_dot_megalodon_dot_vcf
  doc: --max-indel-size MAX_INDEL_SIZE
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_vcf
  doc: 'Output VCF file. Default:'
  type: File?
  outputBinding:
    glob: $(inputs.in_out_vcf)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/megalodon:2.3.1--py38h4a8c8d9_0
cwlVersion: v1.1
baseCommand:
- megalodon_extras
- variants
- atomize
