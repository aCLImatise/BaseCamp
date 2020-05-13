class: CommandLineTool
id: wtpoa_cns.cwl
inputs:
- id: t
  doc: Number of threads, [4]
  type: long
  inputBinding:
    prefix: -t
- id: d
  doc: Reference sequences for SAM input, will invoke sorted-SAM input mode
  type: string
  inputBinding:
    prefix: -d
- id: u
  doc: "XORed flags to handle SAM input. [0] 0x1: Only process reference regions present\
    \ in/between SAM alignments 0x2: Don't fileter secondary/supplementary SAM records\
    \ with flag (0x100 | 0x800)"
  type: long
  inputBinding:
    prefix: -u
- id: r
  doc: Force to use reference mode
  type: boolean
  inputBinding:
    prefix: -r
- id: p
  doc: Similar with -d, but translate SAM into wtdbg layout file
  type: string
  inputBinding:
    prefix: -p
- id: i
  doc: Input file(s) *.ctg.lay from wtdbg, +, [STDIN] Or sorted SAM files when having
    -d/-p
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: Output files, [STDOUT]
  type: string
  inputBinding:
    prefix: -o
- id: f
  doc: Force overwrite
  type: boolean
  inputBinding:
    prefix: -f
- id: j
  doc: Expected max length of node, or say the overlap length of two adjacent units
    in layout file, [1500] bp overlap will be default to 1500(or 150 for sam-sr) when
    having -d/-p, block size will be 2.5 * overlap
  type: long
  inputBinding:
    prefix: -j
- id: b
  doc: Bonus for tri-bases match, [0]
  type: long
  inputBinding:
    prefix: -b
- id: m
  doc: Match score, [2]
  type: long
  inputBinding:
    prefix: -M
- id: x
  doc: Mismatch score, [-5]
  type: long
  inputBinding:
    prefix: -X
- id: i
  doc: Insertion score, [-2]
  type: long
  inputBinding:
    prefix: -I
- id: d
  doc: Deletion score, [-4]
  type: long
  inputBinding:
    prefix: -D
- id: h
  doc: Homopolymer merge score used in dp-call-cns mode, [-3]
  type: double
  inputBinding:
    prefix: -H
- id: b
  doc: Bandwidth in POA, [Wmin[,Wmax[,mat_rate]]], mat_rate = matched_bases/total_bases
    [64,1024,0.92] Program will double bandwidth from Wmin to Wmax when mat_rate is
    lower than setting
  type: string
  inputBinding:
    prefix: -B
- id: w
  doc: Window size in the middle of the first read for fast align remaining reads,
    [200] If $W is negative, will disable fast align, but use the abs($W) as Band
    align score cutoff
  type: long
  inputBinding:
    prefix: -W
- id: w
  doc: Min size of aligned size in window, [$W * 0.5]
  type: long
  inputBinding:
    prefix: -w
- id: a
  doc: Abort TriPOA when any read cannot be fast aligned, then try POA
  type: boolean
  inputBinding:
    prefix: -A
- id: s
  doc: "Shuffle mode, 0: don't shuffle reads, 1: by shared kmers, 2: subsampling.\
    \ [1]"
  type: long
  inputBinding:
    prefix: -S
- id: r
  doc: 'Realignment bandwidth, 0: disable, [16]'
  type: long
  inputBinding:
    prefix: -R
- id: c
  doc: 'Consensus mode: 0, run-length; 1, dp-call-cns, [0]'
  type: long
  inputBinding:
    prefix: -c
- id: c
  doc: Min count of bases to call a consensus base, [3]
  type: long
  inputBinding:
    prefix: -C
- id: f
  doc: Min frequency of non-gap bases to call a consensus base, [0.5]
  type: double
  inputBinding:
    prefix: -F
- id: n
  doc: Max number of reads in PO-MSA [20] Keep in mind that I am not going to generate
    high accurate consensus sequences here
  type: long
  inputBinding:
    prefix: -N
- id: x
  doc: "Presets, [] sam-sr: polishs contigs from short reads mapping, accepts sorted\
    \ SAM files shorted for '-j 50 -W 0 -R 0 -b 1 -c 1 -N 50 -rS 2'"
  type: string
  inputBinding:
    prefix: -x
- id: q
  doc: Quiet
  type: boolean
  inputBinding:
    prefix: -q
- id: v
  doc: Verbose
  type: boolean
  inputBinding:
    prefix: -v
- id: v
  doc: Print version information and then exit
  type: boolean
  inputBinding:
    prefix: -V
outputs: []
cwlVersion: v1.1
baseCommand:
- wtpoa-cns
