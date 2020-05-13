class: CommandLineTool
id: dwgsim_eval.cwl
inputs:
- id: a
  doc: 'INT     split by [0]: 0: by mapping quality 1: by alignment score 2: by suboptimal
    alignment score 3: by alignment score - suboptimal alignment score'
  type: boolean
  inputBinding:
    prefix: -a
- id: b
  doc: alignments are from BWA (SOLiD only) [False]
  type: boolean
  inputBinding:
    prefix: -b
- id: c
  doc: color space alignments [False]
  type: boolean
  inputBinding:
    prefix: -c
- id: d
  doc: INT     divide quality/alignment score by this factor [1]
  type: boolean
  inputBinding:
    prefix: -d
- id: g
  doc: gap "wiggle" [5]
  type: boolean
  inputBinding:
    prefix: -g
- id: m
  doc: consecutive alignments with the same name (and end for multi-ends) should be
    treated as multi-mapped reads [False]
  type: boolean
  inputBinding:
    prefix: -m
- id: n
  doc: INT     number of raw input paired-end reads (otherwise, inferred from all
    SAM records present) [0]
  type: boolean
  inputBinding:
    prefix: -n
- id: q
  doc: INT     consider only alignments with this mapping quality or greater [0]
  type: boolean
  inputBinding:
    prefix: -q
- id: z
  doc: input contains only single end reads [False]
  type: boolean
  inputBinding:
    prefix: -z
- id: s
  doc: input is SAM [False]
  type: boolean
  inputBinding:
    prefix: -S
- id: p
  doc: print incorrect alignments [False]
  type: boolean
  inputBinding:
    prefix: -p
- id: s
  doc: INT     consider only alignments with the number of specified SNPs [-1]
  type: boolean
  inputBinding:
    prefix: -s
- id: e
  doc: INT     consider only alignments with the number of specified errors [-1]
  type: boolean
  inputBinding:
    prefix: -e
- id: i
  doc: consider only alignments with indels [False]
  type: boolean
  inputBinding:
    prefix: -i
- id: p
  doc: STRING  a read prefix that was prepended to each read name [not using]
  type: boolean
  inputBinding:
    prefix: -P
outputs: []
cwlVersion: v1.1
baseCommand:
- dwgsim_eval
