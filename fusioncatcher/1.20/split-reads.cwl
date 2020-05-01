#!/usr/bin/env cwl-runner

baseCommand:
- split-reads.py
class: CommandLineTool
cwlVersion: v1.0
id: split-reads.py
inputs:
- doc: The input file in FASTQ format (Solexa). Can be given as gzipped file too.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: A text file containing on each line a name of short read which should be extracted
    from the input FASTQ file and its corresponding cut position (e.g. cut at position
    N (0-offset); part 1 = [0:N] and part 2 = [N+1:end-read]).
  id: list
  inputBinding:
    prefix: --list
  type: string
- doc: The output FASTQ file where is the first part of the reads (on forward strand).
  id: output_1
  inputBinding:
    prefix: --output-1
  type: string
- doc: The output FASTQ file where is the second part of the reads (on forward strand).
  id: output_2
  inputBinding:
    prefix: --output-2
  type: string
- doc: The size of the wiggle for the cut. If it is 0 then a read is cut into one
    paired-reads. If it is 1 then a read is cut into 3 paired-reads. Default is 0.
  id: wiggle_size
  inputBinding:
    prefix: --wiggle-size
  type: string
- doc: The size of the gap for the cut. Default is 0.
  id: gap_size
  inputBinding:
    prefix: --gap-size
  type: string
- doc: The minimum size of the anchor (for a mapped read which is splited). Default
    is 15.
  id: anchor_size
  inputBinding:
    prefix: --anchor-size
  type: string
- doc: The maximum size of the anchor (for a mapped read which is splited). Default
    is 500.
  id: anchor_size_max
  inputBinding:
    prefix: --anchor-size-max
  type: string
- doc: In the reads ids the '/' from '/1' and '/2' will be replaced with the string
    given here.
  id: replace_solexa_ids
  inputBinding:
    prefix: --replace-solexa-ids
  type: string
- doc: The size of the buffer used for keeping the list of reads ids (given by --list).
    Default is 2000000000.
  id: buffer_size
  inputBinding:
    prefix: --buffer-size
  type: string
- doc: The Fastq file specified by '--output-2' will be reverse-complemented. Default
    is False.
  id: output_2_rc
  inputBinding:
    prefix: --output-2-rc
  type: boolean
