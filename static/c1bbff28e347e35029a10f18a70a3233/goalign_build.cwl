class: CommandLineTool
id: goalign_build.cwl
inputs:
- id: jc
  doc: ': Juke-Cantor'
  type: boolean
  inputBinding:
    prefix: '- jc'
- id: k2p
  doc: ': Kimura 2 Parameters'
  type: boolean
  inputBinding:
    prefix: '- k2p'
- id: f81
  doc: ': Felsenstein 81'
  type: boolean
  inputBinding:
    prefix: '- f81'
- id: f84
  doc: ': Felsenstein 84'
  type: boolean
  inputBinding:
    prefix: '- f84'
- id: tn93
  doc: ': Tamura and Nei 1993'
  type: boolean
  inputBinding:
    prefix: '- tn93'
- id: align
  doc: Alignment input file (default "stdin")
  type: string
  inputBinding:
    prefix: --align
- id: auto_detect
  doc: Auto detects input format (overrides -p, -x and -u)
  type: boolean
  inputBinding:
    prefix: --auto-detect
- id: clustal
  doc: Alignment is in clustal? default fasta
  type: boolean
  inputBinding:
    prefix: --clustal
- id: ignore_identical
  doc: Ignore duplicated sequences that have the same name and same sequences
  type: boolean
  inputBinding:
    prefix: --ignore-identical
- id: input_strict
  doc: Strict phylip input format (only used with -p)
  type: boolean
  inputBinding:
    prefix: --input-strict
- id: nexus
  doc: Alignment is in nexus? default fasta
  type: boolean
  inputBinding:
    prefix: --nexus
- id: no_block
  doc: Write Phylip sequences without space separated blocks (only used with -p)
  type: boolean
  inputBinding:
    prefix: --no-block
- id: one_line
  doc: Write Phylip sequences on 1 line (only used with -p)
  type: boolean
  inputBinding:
    prefix: --one-line
- id: output_strict
  doc: Strict phylip output format (only used with -p)
  type: boolean
  inputBinding:
    prefix: --output-strict
- id: phylip
  doc: Alignment is in phylip? default fasta
  type: boolean
  inputBinding:
    prefix: --phylip
- id: seed
  doc: 'Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)'
  type: long
  inputBinding:
    prefix: --seed
- id: threads
  doc: Number of threads (default 1)
  type: long
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- goalign
- build
