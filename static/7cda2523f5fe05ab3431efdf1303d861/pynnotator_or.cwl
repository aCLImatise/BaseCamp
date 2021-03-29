class: CommandLineTool
id: pynnotator_or.cwl
inputs:
- id: in_vcf_file_annotated
  doc: a VCF file to be annotated
  type: File?
  inputBinding:
    prefix: -i
- id: in_hg_genome_build
  doc: or hg38  The genome build you want to use
  type: long?
  inputBinding:
    prefix: -b
- id: in_options
  doc: install test
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pynnotator:2.0--py_0
cwlVersion: v1.1
baseCommand:
- pynnotator
- or
