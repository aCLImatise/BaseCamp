#!/usr/bin/env cwl-runner

baseCommand:
- wtdbg2
class: CommandLineTool
cwlVersion: v1.0
id: wtdbg2
inputs:
- doc: Approximate genome size (k/m/g suffix allowed) [0]
  id: g
  inputBinding:
    prefix: -g
  type: string
- doc: Choose the best <float> depth from input reads(effective with -g) [50.0]
  id: x
  inputBinding:
    prefix: -X
  type: double
- doc: Choose the longest subread and drop reads shorter than <int> (5000 recommended
    for PacBio) [0] Negative integer indicate tidying read names too, e.g. -5000.
  id: l
  inputBinding:
    prefix: -L
  type: long
- doc: Kmer fsize, 0 <= k <= 23, [0]
  id: k
  inputBinding:
    prefix: -k
  type: long
- doc: Kmer psize, 0 <= p <= 23, [21] k + p <= 25, seed is <k-mer>+<p-homopolymer-compressed>
  id: p
  inputBinding:
    prefix: -p
  type: long
- doc: Filter high frequency kmers, maybe repetitive, [1000.05] >= 1000 and indexing
    >= (1 - 0.05) * total_kmers_count
  id: k
  inputBinding:
    prefix: -K
  type: double
- doc: Subsampling kmers, 1/(<-S>) kmers are indexed, [4.00] -S is very useful in
    saving memeory and speeding up please note that subsampling kmers will have less
    matched length
  id: s
  inputBinding:
    prefix: -S
  type: double
- doc: Min length of alignment, [2048]
  id: l
  inputBinding:
    prefix: -l
  type: double
- doc: Min matched length by kmer matching, [200]
  id: m
  inputBinding:
    prefix: -m
  type: double
- doc: Enable realignment mode
  id: r
  inputBinding:
    prefix: -R
  type: boolean
- doc: Keep contained reads during alignment
  id: a
  inputBinding:
    prefix: -A
  type: boolean
- doc: Min similarity, calculated by kmer matched length / aligned length, [0.05]
  id: s
  inputBinding:
    prefix: -s
  type: double
- doc: Min read depth of a valid edge, [3]
  id: e
  inputBinding:
    prefix: -e
  type: long
- doc: Quiet
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: Verbose (can be multiple)
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: Print version information and then exit
  id: v
  inputBinding:
    prefix: -V
  type: boolean
