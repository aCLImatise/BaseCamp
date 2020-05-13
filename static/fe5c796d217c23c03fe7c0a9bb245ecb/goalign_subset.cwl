class: CommandLineTool
id: goalign_subset.cwl
inputs:
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: indices
  doc: If true, extracts given sequence indices instead of sequence names (0-based)
  type: boolean
  inputBinding:
    prefix: --indices
- id: name_file
  doc: File containing names of sequences to keep (default "stdin")
  type: string
  inputBinding:
    prefix: --name-file
- id: output
  doc: Alignment output file (default "stdout")
  type: string
  inputBinding:
    prefix: --output
- id: regexp
  doc: If sequence names are given as regexp patterns (has priority over --indices)
  type: boolean
  inputBinding:
    prefix: --regexp
- id: revert
  doc: If true, will remove given sequences instead of keeping only them
  type: boolean
  inputBinding:
    prefix: --revert
- id: unaligned
  doc: Considers input sequences as unaligned and fasta format (phylip, nexus,...
    options are ignored)
  type: boolean
  inputBinding:
    prefix: --unaligned
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
- subset
