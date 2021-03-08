class: CommandLineTool
id: vcfentropy.cwl
inputs:
- id: in_fast_a_reference
  doc: FASTA reference file to use to obtain flanking sequences
  type: boolean?
  inputBinding:
    prefix: --fasta-reference
- id: in_window_size
  doc: Size of the window over which to calculate entropy
  type: boolean?
  inputBinding:
    prefix: --window-size
- id: in_vcf_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0
cwlVersion: v1.1
baseCommand:
- vcfentropy
