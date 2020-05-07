class: CommandLineTool
id: phyluce_align_seqcap_align.cwl
inputs:
- id: fast_a
  doc: 'The file containing FASTA reads associated with targted loci from get_fastas_from_match_counts.py
    (default: None)'
  type: string
  inputBinding:
    prefix: --fasta
- id: output
  doc: 'The directory in which to store the resulting alignments. (default: None)'
  type: string
  inputBinding:
    prefix: --output
- id: tax_a
  doc: 'Number of taxa expected in each alignment. (default: None)'
  type: string
  inputBinding:
    prefix: --taxa
- id: aligner
  doc: 'The alignment engine to use. (default: mafft)'
  type: string
  inputBinding:
    prefix: --aligner
- id: output_format
  doc: 'The output alignment format. (default: nexus)'
  type: string
  inputBinding:
    prefix: --output-format
- id: verbosity
  doc: 'The logging level to use. (default: INFO)'
  type: string
  inputBinding:
    prefix: --verbosity
- id: log_path
  doc: 'The path to a directory to hold logs. (default: None)'
  type: string
  inputBinding:
    prefix: --log-path
- id: incomplete_matrix
  doc: 'Allow alignments that do not contain all --taxa. (default: False)'
  type: boolean
  inputBinding:
    prefix: --incomplete-matrix
- id: no_trim
  doc: 'Align, but DO NOT trim alignments. (default: False)'
  type: boolean
  inputBinding:
    prefix: --no-trim
- id: window
  doc: 'Sliding window size for trimming. (default: 20)'
  type: string
  inputBinding:
    prefix: --window
- id: proportion
  doc: 'The proportion of taxa required to have sequence at alignment ends. (default:
    0.65)'
  type: string
  inputBinding:
    prefix: --proportion
- id: threshold
  doc: 'The proportion of residues required across the window in proportion of taxa.
    (default: 0.65)'
  type: string
  inputBinding:
    prefix: --threshold
- id: max_divergence
  doc: 'The max proportion of sequence divergence allowed between any row of the alignment
    and the alignment consensus. (default: 0.2)'
  type: long
  inputBinding:
    prefix: --max-divergence
- id: min_length
  doc: 'The minimum length of alignments to keep. (default: 100)'
  type: long
  inputBinding:
    prefix: --min-length
- id: ambiguous
  doc: 'Allow reads in alignments containing N-bases. (default: False)'
  type: boolean
  inputBinding:
    prefix: --ambiguous
- id: cores
  doc: 'Process alignments in parallel using --cores for alignment. This is the number
    of PHYSICAL CPUs. (default: 1)'
  type: string
  inputBinding:
    prefix: --cores
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_seqcap_align
