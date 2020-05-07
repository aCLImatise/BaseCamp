class: CommandLineTool
id: fc_fasta2fasta.cwl
inputs:
- id: gzip
  doc: Compress intermediate fasta with gzip. (Not currently implemented.)
  type: boolean
  inputBinding:
    prefix: --gzip
- id: z_mw_start
  doc: Ignore the zmw number in the fasta header. Instead, use a global counter, starting
    at this numer.
  type: string
  inputBinding:
    prefix: --zmw-start
outputs: []
cwlVersion: v1.1
baseCommand:
- fc_fasta2fasta
