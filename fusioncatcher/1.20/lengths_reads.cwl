#!/usr/bin/env cwl-runner

baseCommand:
- lengths_reads.py
class: CommandLineTool
cwlVersion: v1.0
id: lengths_reads.py
inputs:
- doc: The input file in FASTQ Solexa file (also given thru stdin or as gzipped file).
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The output text file containg the unique lengths of the reads found in the
    input file. The unique lengths are sorted in descending order.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: The output text file containg the counts of reads found in the input file.
  id: counts
  inputBinding:
    prefix: --counts
  type: string
