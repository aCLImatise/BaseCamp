class: CommandLineTool
id: yacrd_filter.cwl
inputs:
- id: in_input
  doc: path to sequence input (fasta|fastq) compression is autodetect (none|gzip|bzip2|lzma)
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: path to output file, format and compression of input is preserved
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/yacrd:0.6.2--hbcae180_1
cwlVersion: v1.1
baseCommand:
- yacrd
- filter
