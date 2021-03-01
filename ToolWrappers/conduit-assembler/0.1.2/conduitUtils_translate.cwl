class: CommandLineTool
id: conduitUtils_translate.cwl
inputs:
- id: in_fast_a
  doc: "(default)\nInput file is in FASTA format"
  type: boolean?
  inputBinding:
    prefix: --fasta
- id: in_fast_q
  doc: Input file is in FASTQ format
  type: boolean?
  inputBinding:
    prefix: --fastq
- id: in_stranded
  doc: Input reads are forward stranded
  type: boolean?
  inputBinding:
    prefix: --stranded
- id: in_min_length
  doc: "(75)\nMinimum length in Amino Acids necessary for a putative ORF to be reported\n"
  type: boolean?
  inputBinding:
    prefix: --min-length
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/conduit-assembler:0.1.2--hbeb723e_0
cwlVersion: v1.1
baseCommand:
- conduitUtils
- translate
