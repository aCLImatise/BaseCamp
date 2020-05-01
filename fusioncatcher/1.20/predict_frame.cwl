#!/usr/bin/env cwl-runner

baseCommand:
- predict_frame.py
class: CommandLineTool
cwlVersion: v1.0
id: predict_frame.py
inputs:
- doc: The input GTF file containing the genome annotation.
  id: gtf
  inputBinding:
    prefix: --gtf
  type: string
- doc: The input FASTA file contains the DNA sequences of all ENSEMBL transcripts.
  id: transcripts
  inputBinding:
    prefix: --transcripts
  type: string
- doc: The input file containing the fusion (chromosomal) coordinates for each fusion
    genes.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The output file where the frame predictions are written.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: Compress the transcript sequences.
  id: compress_transcripts
  inputBinding:
    prefix: --compress-transcripts
  type: boolean
- doc: Do not print status messages to stdout.
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: 'Daniel Nicorici, E-mail: Daniel.Nicorici@gmail.com'
  id: author
  inputBinding:
    prefix: --author
  type: string
