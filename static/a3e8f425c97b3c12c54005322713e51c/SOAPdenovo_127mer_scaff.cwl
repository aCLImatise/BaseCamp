class: CommandLineTool
id: SOAPdenovo_127mer_scaff.cwl
inputs:
- id: g
  doc: 'inputGraph: prefix of input graph file names'
  type: string
  inputBinding:
    prefix: -g
- id: f
  doc: (optional)      fill gaps in scaffold, [No]
  type: boolean
  inputBinding:
    prefix: -F
- id: z
  doc: (optional)      use compatible mode to build scaffold with contig produced
    by Version 1.05, [No]
  type: boolean
  inputBinding:
    prefix: -z
- id: u
  doc: (optional)      un-mask contigs with high/low coverage before scaffolding,
    [mask]
  type: boolean
  inputBinding:
    prefix: -u
- id: s
  doc: (optional)      if scaffold structure exists, do gapfilling only(-F), [NO]
  type: boolean
  inputBinding:
    prefix: -S
- id: w
  doc: (optional)      keep contigs weakly connected to other contigs in scaffold,
    [NO]
  type: boolean
  inputBinding:
    prefix: -w
- id: v
  doc: (optional)      output information for Hawkeye to visualize the assembly, [NO]
  type: boolean
  inputBinding:
    prefix: -V
- id: g
  doc: 'gapLenDiff: allowed length difference between estimated and filled gap, [50]'
  type: long
  inputBinding:
    prefix: -G
- id: l
  doc: 'minContigLen: shortest contig for scaffolding, [K+2]'
  type: long
  inputBinding:
    prefix: -L
- id: c
  doc: 'minContigCvg: minimum contig coverage (c*avgCvg), contigs shorter than 100bp
    with coverage smaller than c*avgCvg will be masked before scaffolding unless -u
    is set, [0.1]'
  type: double
  inputBinding:
    prefix: -c
- id: c
  doc: 'maxContigCvg: maximum contig coverage (C*avgCvg), contigs with coverage larger
    than C*avgCvg or contigs shorter than 100bp with coverage larger than 0.8*C*avgCvg
    will be masked before scaffolding unless -u is set, [2]'
  type: double
  inputBinding:
    prefix: -C
- id: b
  doc: 'insertSizeUpperBound: (b*avg_ins) will be used as upper bound of insert size
    for large insert size ( > 1000) when handling pair-end connections between contigs
    if b is set to larger than 1, [1.5]'
  type: double
  inputBinding:
    prefix: -b
- id: b
  doc: "bubbleCoverage: remove contig with lower cvoerage in bubble structure if both\
    \ contigs' coverage are smaller than bubbleCoverage*avgCvg, [0.6]"
  type: double
  inputBinding:
    prefix: -B
- id: n
  doc: 'genomeSize: genome size for statistics, [0]'
  type: long
  inputBinding:
    prefix: -N
- id: p
  doc: 'n_cpu: number of cpu for use, [8]'
  type: long
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- SOAPdenovo-127mer
- scaff
