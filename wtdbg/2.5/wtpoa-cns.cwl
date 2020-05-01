#!/usr/bin/env cwl-runner

baseCommand:
- wtpoa-cns
class: CommandLineTool
cwlVersion: v1.0
id: wtpoa-cns
inputs:
- doc: Number of threads, [4]
  id: t
  inputBinding:
    prefix: -t
  type: long
- doc: Reference sequences for SAM input, will invoke sorted-SAM input mode
  id: d
  inputBinding:
    prefix: -d
  type: string
- doc: "XORed flags to handle SAM input. [0] 0x1: Only process reference regions present\
    \ in/between SAM alignments 0x2: Don't fileter secondary/supplementary SAM records\
    \ with flag (0x100 | 0x800)"
  id: u
  inputBinding:
    prefix: -u
  type: long
- doc: Force to use reference mode
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: Similar with -d, but translate SAM into wtdbg layout file
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: Input file(s) *.ctg.lay from wtdbg, +, [STDIN] Or sorted SAM files when having
    -d/-p
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
- doc: Expected max length of node, or say the overlap length of two adjacent units
    in layout file, [1500] bp overlap will be default to 1500(or 150 for sam-sr) when
    having -d/-p, block size will be 2.5 * overlap
  id: j
  inputBinding:
    prefix: -j
  type: long
- doc: Bonus for tri-bases match, [0]
  id: b
  inputBinding:
    prefix: -b
  type: long
- doc: Match score, [2]
  id: m
  inputBinding:
    prefix: -M
  type: long
- doc: Mismatch score, [-5]
  id: x
  inputBinding:
    prefix: -X
  type: long
- doc: Insertion score, [-2]
  id: i
  inputBinding:
    prefix: -I
  type: long
- doc: Deletion score, [-4]
  id: d
  inputBinding:
    prefix: -D
  type: long
- doc: Homopolymer merge score used in dp-call-cns mode, [-3]
  id: h
  inputBinding:
    prefix: -H
  type: double
- doc: Bandwidth in POA, [Wmin[,Wmax[,mat_rate]]], mat_rate = matched_bases/total_bases
    [64,1024,0.92] Program will double bandwidth from Wmin to Wmax when mat_rate is
    lower than setting
  id: b
  inputBinding:
    prefix: -B
  type: string
- doc: Window size in the middle of the first read for fast align remaining reads,
    [200] If $W is negative, will disable fast align, but use the abs($W) as Band
    align score cutoff
  id: w
  inputBinding:
    prefix: -W
  type: long
- doc: Min size of aligned size in window, [$W * 0.5]
  id: w
  inputBinding:
    prefix: -w
  type: long
- doc: Abort TriPOA when any read cannot be fast aligned, then try POA
  id: a
  inputBinding:
    prefix: -A
  type: boolean
- doc: "Shuffle mode, 0: don't shuffle reads, 1: by shared kmers, 2: subsampling.\
    \ [1]"
  id: s
  inputBinding:
    prefix: -S
  type: long
- doc: 'Realignment bandwidth, 0: disable, [16]'
  id: r
  inputBinding:
    prefix: -R
  type: long
- doc: 'Consensus mode: 0, run-length; 1, dp-call-cns, [0]'
  id: c
  inputBinding:
    prefix: -c
  type: long
- doc: Min count of bases to call a consensus base, [3]
  id: c
  inputBinding:
    prefix: -C
  type: long
- doc: Min frequency of non-gap bases to call a consensus base, [0.5]
  id: f
  inputBinding:
    prefix: -F
  type: double
- doc: Max number of reads in PO-MSA [20] Keep in mind that I am not going to generate
    high accurate consensus sequences here
  id: n
  inputBinding:
    prefix: -N
  type: long
- doc: "Presets, [] sam-sr: polishs contigs from short reads mapping, accepts sorted\
    \ SAM files shorted for '-j 50 -W 0 -R 0 -b 1 -c 1 -N 50 -rS 2'"
  id: x
  inputBinding:
    prefix: -x
  type: string
- doc: Quiet
  id: q
  inputBinding:
    prefix: -q
  type: boolean
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
