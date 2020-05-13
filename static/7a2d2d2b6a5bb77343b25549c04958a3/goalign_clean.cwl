class: CommandLineTool
id: goalign_clean.cwl
inputs:
- id: seqs
  doc: Removes sequences with gaps
  type: string
  inputBinding:
    position: 0
- id: sites
  doc: Removes sites with gaps
  type: string
  inputBinding:
    position: 1
- id: cut_off
  doc: 'Cutoff for gap deletion : 0 remove sites/sequences with > 0 gap, 1 remove
    sites/sequences with 100% gaps)'
  type: double
  inputBinding:
    prefix: --cutoff
- id: output
  doc: Cleaned alignment output file (default "stdout")
  type: string
  inputBinding:
    prefix: --output
- id: quiet
  doc: Do not print results on stderr
  type: boolean
  inputBinding:
    prefix: --quiet
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
- clean
