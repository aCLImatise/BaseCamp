class: CommandLineTool
id: vphaser2.cwl
inputs:
- id: i
  doc: '[input.bam] -- input sorted bam file'
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: '[output DIR] -- output directory'
  type: boolean
  inputBinding:
    prefix: -o
- id: e
  doc: '[1 or 2] -- default 1; 1: pileup + phasing; 2: pileup'
  type: boolean
  inputBinding:
    prefix: -e
- id: w
  doc: -- default 500; alignment window size
  type: boolean
  inputBinding:
    prefix: -w
- id: ig
  doc: '-- default 0; # of bases to ignore on both end of a read'
  type: boolean
  inputBinding:
    prefix: -ig
- id: default
  doc: 2; constrain PE distance by delta x fragsize_variation (auto measured by program)
  type: boolean
  inputBinding:
    prefix: -- default
- id: ps
  doc: (0, 100] -- default 30; percentage of reads to sample to get stats.
  type: boolean
  inputBinding:
    prefix: -ps
- id: dt
  doc: '[0 or 1] -- default 1; 1: dinucleotide for err prob measure; 0: not'
  type: boolean
  inputBinding:
    prefix: -dt
- id: cy
  doc: '[0 or 1] -- default 1; 1: read cycle for err calibr; 0: not'
  type: boolean
  inputBinding:
    prefix: -cy
- id: mp
  doc: '[0 or 1] -- default 1; 1: mate-pair for err calibr; 0: not'
  type: boolean
  inputBinding:
    prefix: -mp
- id: qual
  doc: '[0, 40] -- default 20; quantile of qual for err calibr'
  type: boolean
  inputBinding:
    prefix: -qual
- id: a
  doc: -- default 0.05; significance value for stat test
  type: boolean
  inputBinding:
    prefix: -a
outputs: []
cwlVersion: v1.1
baseCommand:
- vphaser2
