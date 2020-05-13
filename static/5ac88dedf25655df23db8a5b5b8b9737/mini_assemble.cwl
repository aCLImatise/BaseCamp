class: CommandLineTool
id: mini_assemble.cwl
inputs:
- id: i
  doc: fastx input reads (required).
  type: boolean
  inputBinding:
    prefix: -i
- id: r
  doc: reference fasta for reference-guided consensus (instead of de novo assembly)
  type: boolean
  inputBinding:
    prefix: -r
- id: o
  doc: 'output folder (default: assm).'
  type: boolean
  inputBinding:
    prefix: -o
- id: p
  doc: 'output file prefix (default: reads).'
  type: boolean
  inputBinding:
    prefix: -p
- id: t
  doc: 'number of minimap and racon threads (default: 1).'
  type: boolean
  inputBinding:
    prefix: -t
- id: m
  doc: 'number of racon rounds (default: 4).'
  type: boolean
  inputBinding:
    prefix: -m
- id: n
  doc: 'number of racon shuffles (default: 1. If not 1, should be >10).'
  type: boolean
  inputBinding:
    prefix: -n
- id: w
  doc: 'racon window length (default: 500).'
  type: boolean
  inputBinding:
    prefix: -w
- id: k
  doc: 'keep intermediate files (default: delete).'
  type: boolean
  inputBinding:
    prefix: -k
- id: k
  doc: "minimap's -K option (default: 500M)."
  type: boolean
  inputBinding:
    prefix: -K
- id: c
  doc: trim adapters from reads prior to everything else.
  type: boolean
  inputBinding:
    prefix: -c
- id: e
  doc: error correct longest e% of reads prior to assembly, or an estimated coverage
    (e.g. 2x). For an estimated coverage, the -l option must be a fastx or a length
    (e.g. 4.8mb).
  type: boolean
  inputBinding:
    prefix: -e
- id: l
  doc: Reference length, either as a number (e.g. 4.8mb) or fastx from which length
    will be calculated.
  type: boolean
  inputBinding:
    prefix: -l
- id: x
  doc: log all commands before running.
  type: boolean
  inputBinding:
    prefix: -x
outputs: []
cwlVersion: v1.1
baseCommand:
- mini_assemble
