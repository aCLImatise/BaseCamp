#!/usr/bin/env cwl-runner

baseCommand:
- wtdbg-cns
class: CommandLineTool
cwlVersion: v1.0
id: wtdbg-cns
inputs:
- doc: Number of threads, [1]
  id: t
  inputBinding:
    prefix: -t
  type: long
- doc: Input file(s) *.utg.cns from wtdbg, +, [STDIN]
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: Output files, [STDOUT]
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: Force overwrite
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: Expected length of node, or say the overlap length of two adject units in layout
    file, [1000] bp
  id: j
  inputBinding:
    prefix: -j
  type: long
- doc: Kmer size for long reads, [15]
  id: k
  inputBinding:
    prefix: -k
  type: long
- doc: Z-cutoff, drop the lower  (score / <-X>), [4]
  id: z
  inputBinding:
    prefix: -Z
  type: long
- doc: W-cutoff, drop the lagger (position), [48] In DAG correction, -W set the bandwidth
    of alignment
  id: w
  inputBinding:
    prefix: -W
  type: long
- doc: High coverage bonus, [1]
  id: h
  inputBinding:
    prefix: -H
  type: long
- doc: High coverage cutoff = avg_cov / <-L> [10]
  id: l
  inputBinding:
    prefix: -L
  type: long
- doc: 'Candidate strategy, 0: best-kmers, 1: median length, 2: first (include), 3:
    first (exclude), 4: longest, 5, shortest, [0] In DAG correction, force to use
    strategy 2'
  id: c
  inputBinding:
    prefix: -c
  type: long
- doc: Match score, [2]
  id: m
  inputBinding:
    prefix: -M
  type: long
- doc: Mismatch score, [-7]
  id: x
  inputBinding:
    prefix: -X
  type: long
- doc: Insertion score, [-3]
  id: i
  inputBinding:
    prefix: -I
  type: long
- doc: Deletion score, [-4]
  id: d
  inputBinding:
    prefix: -D
  type: long
- doc: Gap extension score, [-2]
  id: e
  inputBinding:
    prefix: -E
  type: long
- doc: '1: DBG correction; 2: DAG correction, [1]'
  id: m
  inputBinding:
    prefix: -m
  type: long
- doc: whether to correct structure before error correction, [1]
  id: s
  inputBinding:
    prefix: -S
  type: long
- doc: Verbose
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: Print version information and then exit
  id: v
  inputBinding:
    prefix: -V
  type: boolean
