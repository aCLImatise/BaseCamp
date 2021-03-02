class: CommandLineTool
id: CrossMap.py_gvcf.cwl
inputs:
- id: in_no_comp_alleles
  doc: "If set, CrossMap does NOT check if the reference allele\nis different from\
    \ the alternate allele."
  type: boolean?
  inputBinding:
    prefix: --no-comp-alleles
- id: in_compress
  doc: "If set, compress the output gVCF file by calling the\nsystem \"gzip\".\n"
  type: File?
  inputBinding:
    prefix: --compress
- id: in_chain_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_do_tgv_cf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_ref_genome_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_compress
  doc: "If set, compress the output gVCF file by calling the\nsystem \"gzip\".\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_compress)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/crossmap:0.5.2--pyh7b7c402_0
cwlVersion: v1.1
baseCommand:
- CrossMap.py
- gvcf
