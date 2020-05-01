#!/usr/bin/env cwl-runner

baseCommand:
- compress-reads-ids.py
class: CommandLineTool
cwlVersion: v1.0
id: compress-reads-ids.py
inputs:
- doc: The input file in FASTQ Solexa file (also given thru STDOUT or as gzipped file).
    By default, it is assumed that the input reads are shuffled/interleaved (that
    is read id 1 is followed by read id 2 where read 1 and read 2 form a pair).
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The output text file containg the changed reads ids (also given thru STDOUT
    or as gzipped file).
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: The total number of reads in the input file. This is used in order to compress
    the best the reads ids.
  id: count_reads
  inputBinding:
    prefix: --count-reads
  type: string
- doc: If this is set than no /1 and /2 will be added to the compressed reads ids.
    It has an effect only on interleaved inputs.
  id: no12
  inputBinding:
    prefix: --no12
  type: boolean
- doc: If it is set then the input reads from the input FASTQ files are not interleaved.
    Also no /1 or /2 is added to the reads ids.
  id: not_interleaved
  inputBinding:
    prefix: --not-interleaved
  type: boolean
- doc: If this is set then also lowercase charcaters will be used for read ids in
    FASTQ files.
  id: lowercase
  inputBinding:
    prefix: --lowercase
  type: boolean
