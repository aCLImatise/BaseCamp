#!/usr/bin/env cwl-runner

baseCommand:
- goalign
class: CommandLineTool
cwlVersion: v1.0
id: goalign
inputs:
- doc: Alignment input file (default "stdin")
  id: align
  inputBinding:
    prefix: --align
  type: string
- doc: Auto detects input format (overrides -p, -x and -u)
  id: auto_detect
  inputBinding:
    prefix: --auto-detect
  type: boolean
- doc: Alignment is in clustal? default fasta
  id: clustal
  inputBinding:
    prefix: --clustal
  type: boolean
- doc: Ignore duplicated sequences that have the same name and same sequences
  id: ignore_identical
  inputBinding:
    prefix: --ignore-identical
  type: boolean
- doc: Strict phylip input format (only used with -p)
  id: input_strict
  inputBinding:
    prefix: --input-strict
  type: boolean
- doc: Alignment is in nexus? default fasta
  id: nexus
  inputBinding:
    prefix: --nexus
  type: boolean
- doc: Write Phylip sequences without space separated blocks (only used with -p)
  id: no_block
  inputBinding:
    prefix: --no-block
  type: boolean
- doc: Write Phylip sequences on 1 line (only used with -p)
  id: one_line
  inputBinding:
    prefix: --one-line
  type: boolean
- doc: Strict phylip output format (only used with -p)
  id: output_strict
  inputBinding:
    prefix: --output-strict
  type: boolean
- doc: Alignment is in phylip? default fasta
  id: phylip
  inputBinding:
    prefix: --phylip
  type: boolean
- doc: 'Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)'
  id: seed
  inputBinding:
    prefix: --seed
  type: long
- doc: Number of threads (default 1)
  id: threads
  inputBinding:
    prefix: --threads
  type: long
