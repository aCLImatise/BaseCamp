class: CommandLineTool
id: sidr_runfile.cwl
inputs:
- id: in_in_file
  doc: Comma-delimited input file.
  type: File?
  inputBinding:
    prefix: --infile
- id: in_tax_dump
  doc: "Location of the NCBI Taxonomy dump. Default is\n$BLASTDB."
  type: File?
  inputBinding:
    prefix: --taxdump
- id: in_output
  doc: "Location to save the contigs identified as the target\norganism(optional)."
  type: File?
  inputBinding:
    prefix: --output
- id: in_to_remove
  doc: "Location to save the contigs identified as not\nbelonging to the target organism\
    \ (optional)."
  type: File?
  inputBinding:
    prefix: --toremove
- id: in_target
  doc: "The identity of the target organism at the chosen\nclassification level. It\
    \ is recommended to use the\norganism's phylum."
  type: string?
  inputBinding:
    prefix: --target
- id: in_binary
  doc: Use binary target/nontarget classification.
  type: boolean?
  inputBinding:
    prefix: --binary
- id: in_level
  doc: "The classification level to use when constructing the\nmodel. Default is 'phylum'."
  type: string?
  inputBinding:
    prefix: --level
- id: in_sources_dot
  doc: Input data will be read for all variables which will be used to construct
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sidr:0.0.2a2--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- sidr
- runfile
