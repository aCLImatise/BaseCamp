class: CommandLineTool
id: ../../../yacrd_extract.cwl
inputs:
- id: input
  doc: path to sequence input (fasta|fastq) compression is autodetect (none|gzip|bzip2|lzma)
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: path to output file, format and compression of input is preserved
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- yacrd
- extract
