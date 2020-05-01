#!/usr/bin/env cwl-runner

baseCommand:
- remove_reads_exon_exon_fastq.py
class: CommandLineTool
cwlVersion: v1.0
id: remove_reads_exon_exon_fastq.py
inputs:
- doc: The input FASTQ file containing the reads.
  id: input_fast_q
  inputBinding:
    prefix: --input_fastq
  type: string
- doc: The input file containing the list of candidate fusion genes.
  id: input_fusions
  inputBinding:
    prefix: --input_fusions
  type: string
- doc: The input MAP file containing the reads mapping on transcriptome.
  id: input_transcriptome
  inputBinding:
    prefix: --input_transcriptome
  type: string
- doc: The output FASTQ file containing all reads which have their mate mapping on
    the candidate fusion genes.
  id: output_fast_q
  inputBinding:
    prefix: --output_fastq
  type: string
- doc: The output log file.
  id: log
  inputBinding:
    prefix: --log
  type: string
