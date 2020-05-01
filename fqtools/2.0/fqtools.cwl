#!/usr/bin/env cwl-runner

baseCommand:
- fqtools
class: CommandLineTool
cwlVersion: v1.0
id: fqtools
inputs:
- doc: Do not assume specifc quality score encoding
  id: u
  inputBinding:
    position: 0
  type: string
- doc: Interpret quality scores as Sanger encoded
  id: s
  inputBinding:
    position: 1
  type: string
- doc: Interpret quality scores as Solexa encoded
  id: o
  inputBinding:
    position: 2
  type: string
- doc: Interpret quality scores as Illumina encoded
  id: i
  inputBinding:
    position: 3
  type: string
- doc: uncompressed FASTQ format (.fastq)
  id: f
  inputBinding:
    position: 0
  type: string
- doc: compressed FASTQ format (.fastq.gz)
  id: f
  inputBinding:
    position: 1
  type: string
- doc: BAM format (.bam)
  id: b
  inputBinding:
    position: 2
  type: string
- doc: SAM format (.sam)
  id: s
  inputBinding:
    position: 3
  type: string
- doc: attempt to infer format from file extension, (default .fastq.gz)
  id: u
  inputBinding:
    position: 4
  type: string
- doc: Show the program version and exit.
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: Allow DNA sequence bases       (ACGTN)
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: Allow RNA sequence bases       (ACGUN)
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: Allow ambiguous sequence bases (RYKMSWBDHV)
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: Allow mask sequence base       (X)
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: Allow uppercase sequence bases
  id: u
  inputBinding:
    prefix: -u
  type: boolean
- doc: Allow lowercase sequence bases
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: Set the pair replacement character (default "%")
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: Set the input buffer size
  id: b
  inputBinding:
    prefix: -b
  type: string
- doc: Set the output buffer size
  id: b
  inputBinding:
    prefix: -B
  type: string
- doc: Set the quality score encoding
  id: q
  inputBinding:
    prefix: -q
  type: string
- doc: Set the input file format
  id: f
  inputBinding:
    prefix: -f
  type: string
- doc: Set the output file format
  id: f
  inputBinding:
    prefix: -F
  type: string
- doc: Read interleaved input file pairs
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: Write interleaved output file pairs
  id: i
  inputBinding:
    prefix: -I
  type: boolean
