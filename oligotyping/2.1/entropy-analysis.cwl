#!/usr/bin/env cwl-runner

baseCommand:
- entropy-analysis
class: CommandLineTool
cwlVersion: v1.0
id: entropy-analysis
inputs:
- doc: Alignment file that contains all samples and sequences in FASTA format
  id: alignment
  inputBinding:
    position: 0
  type: string
- doc: 'When set, entropy computation will assume that the reads in FASTA file are
    unique. Frequency information of unique reads must be stored in the deflines.
    Every defline in the FASTA file must present the frequency information in this
    format: "freq:NUMBER", e.g. ">Read_ID|X|Y|freq:42", or ">Read_ID|freq:42|X|Y"'
  id: unique_d
  inputBinding:
    prefix: --uniqued
  type: boolean
- doc: When set, entropy computation per column will use mean quality score for each
    column.
  id: weighted
  inputBinding:
    prefix: --weighted
  type: boolean
- doc: If sequences are composed of amino acids, instead of nucleotides.
  id: amino_acid_sequences
  inputBinding:
    prefix: --amino-acid-sequences
  type: boolean
- doc: When set, entropy values will be shown as fast as possible (some visualization
    steps will be skipped).
  id: quick
  inputBinding:
    prefix: --quick
  type: boolean
- doc: When set, no figures will be shown.
  id: no_display
  inputBinding:
    prefix: --no-display
  type: boolean
