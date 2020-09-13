class: CommandLineTool
id: ../../../phyluce_align_seqcap_align.cwl
inputs:
- id: in_fast_a
  doc: "The file containing FASTA reads associated with\ntargted loci from get_fastas_from_match_counts.py\n\
    (default: None)"
  type: File
  inputBinding:
    prefix: --fasta
- id: in_output
  doc: "The directory in which to store the resulting\nalignments. (default: None)"
  type: Directory
  inputBinding:
    prefix: --output
- id: in_tax_a
  doc: "Number of taxa expected in each alignment. (default:\nNone)"
  type: long
  inputBinding:
    prefix: --taxa
- id: in_aligner
  doc: 'The alignment engine to use. (default: mafft)'
  type: string
  inputBinding:
    prefix: --aligner
- id: in_output_format
  doc: 'The output alignment format. (default: nexus)'
  type: string
  inputBinding:
    prefix: --output-format
- id: in_verbosity
  doc: 'The logging level to use. (default: INFO)'
  type: string
  inputBinding:
    prefix: --verbosity
- id: in_log_path
  doc: 'The path to a directory to hold logs. (default: None)'
  type: File
  inputBinding:
    prefix: --log-path
- id: in_incomplete_matrix
  doc: "Allow alignments that do not contain all --taxa.\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --incomplete-matrix
- id: in_no_trim
  doc: 'Align, but DO NOT trim alignments. (default: False)'
  type: boolean
  inputBinding:
    prefix: --no-trim
- id: in_window
  doc: 'Sliding window size for trimming. (default: 20)'
  type: long
  inputBinding:
    prefix: --window
- id: in_proportion
  doc: "The proportion of taxa required to have sequence at\nalignment ends. (default:\
    \ 0.65)"
  type: double
  inputBinding:
    prefix: --proportion
- id: in_threshold
  doc: "The proportion of residues required across the window\nin proportion of taxa.\
    \ (default: 0.65)"
  type: double
  inputBinding:
    prefix: --threshold
- id: in_max_divergence
  doc: "The max proportion of sequence divergence allowed\nbetween any row of the\
    \ alignment and the alignment\nconsensus. (default: 0.2)"
  type: long
  inputBinding:
    prefix: --max-divergence
- id: in_min_length
  doc: "The minimum length of alignments to keep. (default:\n100)"
  type: long
  inputBinding:
    prefix: --min-length
- id: in_ambiguous
  doc: "Allow reads in alignments containing N-bases.\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --ambiguous
- id: in_cores
  doc: "Process alignments in parallel using --cores for\nalignment. This is the number\
    \ of PHYSICAL CPUs.\n(default: 1)\n"
  type: long
  inputBinding:
    prefix: --cores
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyluce_align_seqcap_align
