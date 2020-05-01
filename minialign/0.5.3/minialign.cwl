#!/usr/bin/env cwl-runner

baseCommand:
- minialign
class: CommandLineTool
cwlVersion: v1.0
id: minialign
inputs:
- doc: load preset params {pacbio,ont,ava} [ont]
  id: x
  inputBinding:
    prefix: -x
  type: string
- doc: number of threads [1]
  id: t
  inputBinding:
    prefix: -t
  type: long
- doc: switch to all-versus-all alignment mode
  id: x
  inputBinding:
    prefix: -X
  type: boolean
- doc: show version number [0.5.2-unknown]
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: k-mer size [15]
  id: k
  inputBinding:
    prefix: -k
  type: long
- doc: minimizer window size [{-k}*2/3]
  id: w
  inputBinding:
    prefix: -w
  type: long
- doc: dump index to FILE []
  id: d
  inputBinding:
    prefix: -d
  type: File
- doc: load index from FILE [] (overriding -k and -w)
  id: l
  inputBinding:
    prefix: -l
  type: File
- doc: match award [1]
  id: a
  inputBinding:
    prefix: -a
  type: long
- doc: mismatch penalty [1]
  id: b
  inputBinding:
    prefix: -b
  type: long
- doc: gap open penalty [1]
  id: p
  inputBinding:
    prefix: -p
  type: long
- doc: gap extension penalty [1]
  id: q
  inputBinding:
    prefix: -q
  type: long
- doc: minimum alignment score [50]
  id: s
  inputBinding:
    prefix: -s
  type: long
- doc: minimum alignment score ratio [0.30]
  id: m
  inputBinding:
    prefix: -m
  type: long
- doc: output format {sam,maf,blast6,blasr1,blasr4,paf,mhap,falcon} [sam]
  id: o
  inputBinding:
    prefix: -O
  type: string
- doc: include quality string
  id: q
  inputBinding:
    prefix: -Q
  type: boolean
- doc: read group header line, like "@RG\tID:1" []
  id: r
  inputBinding:
    prefix: -R
  type: string
- doc: ',...   list of optional tags: {RG,AS,XS,NM,NH,IH,SA,MD} [] RG is also inferred
    from -R supp. records are omitted when SA tag is enabled'
  id: t
  inputBinding:
    prefix: -T
  type: string
