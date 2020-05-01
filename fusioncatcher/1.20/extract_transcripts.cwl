#!/usr/bin/env cwl-runner

baseCommand:
- extract_transcripts.py
class: CommandLineTool
cwlVersion: v1.0
id: extract_transcripts.py
inputs:
- doc: Input file with Ensembl genes ids.
  id: input_genes
  inputBinding:
    prefix: --input_genes
  type: string
- doc: Input FASTA genome containing the genome sequences.
  id: input_transcriptome
  inputBinding:
    prefix: --input_transcriptome
  type: string
- doc: The output FASTA file where the genes sequences are written.
  id: output
  inputBinding:
    prefix: --output
  type: string
