class: CommandLineTool
id: entropy_analysis.cwl
inputs:
- id: alignment
  doc: Alignment file that contains all samples and sequences in FASTA format
  type: string
  inputBinding:
    position: 0
- id: unique_d
  doc: 'When set, entropy computation will assume that the reads in FASTA file are
    unique. Frequency information of unique reads must be stored in the deflines.
    Every defline in the FASTA file must present the frequency information in this
    format: "freq:NUMBER", e.g. ">Read_ID|X|Y|freq:42", or ">Read_ID|freq:42|X|Y"'
  type: boolean
  inputBinding:
    prefix: --uniqued
- id: weighted
  doc: When set, entropy computation per column will use mean quality score for each
    column.
  type: boolean
  inputBinding:
    prefix: --weighted
- id: amino_acid_sequences
  doc: If sequences are composed of amino acids, instead of nucleotides.
  type: boolean
  inputBinding:
    prefix: --amino-acid-sequences
- id: quick
  doc: When set, entropy values will be shown as fast as possible (some visualization
    steps will be skipped).
  type: boolean
  inputBinding:
    prefix: --quick
- id: no_display
  doc: When set, no figures will be shown.
  type: boolean
  inputBinding:
    prefix: --no-display
outputs: []
cwlVersion: v1.1
baseCommand:
- entropy-analysis
