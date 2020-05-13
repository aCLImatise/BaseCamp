class: CommandLineTool
id: goalign_sw.cwl
inputs:
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: gap_extend
  doc: Score for extending a gap  (default -0.5)
  type: double
  inputBinding:
    prefix: --gap-extend
- id: gap_open
  doc: Score for opening a gap  (default -10)
  type: double
  inputBinding:
    prefix: --gap-open
- id: log
  doc: Alignment log file (default "none")
  type: string
  inputBinding:
    prefix: --log
- id: match
  doc: Score for a match (if omitted, then take substitution matrix) (default 1)
  type: double
  inputBinding:
    prefix: --match
- id: mismatch
  doc: Score for a mismatch (if omitted, then take substitution matrix) (default -1)
  type: double
  inputBinding:
    prefix: --mismatch
- id: output
  doc: Alignment output file (default "stdout")
  type: string
  inputBinding:
    prefix: --output
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
- sw
