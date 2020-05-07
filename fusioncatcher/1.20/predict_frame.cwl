class: CommandLineTool
id: predict_frame.py.cwl
inputs:
- id: gtf
  doc: The input GTF file containing the genome annotation.
  type: string
  inputBinding:
    prefix: --gtf
- id: transcripts
  doc: The input FASTA file contains the DNA sequences of all ENSEMBL transcripts.
  type: string
  inputBinding:
    prefix: --transcripts
- id: input
  doc: The input file containing the fusion (chromosomal) coordinates for each fusion
    genes.
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: The output file where the frame predictions are written.
  type: string
  inputBinding:
    prefix: --output
- id: compress_transcripts
  doc: Compress the transcript sequences.
  type: boolean
  inputBinding:
    prefix: --compress-transcripts
- id: quiet
  doc: Do not print status messages to stdout.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: author
  doc: 'Daniel Nicorici, E-mail: Daniel.Nicorici@gmail.com'
  type: string
  inputBinding:
    prefix: --author
outputs: []
cwlVersion: v1.1
baseCommand:
- predict_frame.py
