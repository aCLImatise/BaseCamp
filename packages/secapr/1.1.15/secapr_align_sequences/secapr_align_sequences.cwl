class: CommandLineTool
id: secapr_align_sequences.cwl
inputs:
- id: in_sequences
  doc: "The fasta file containing individual sequences for\nseveral samples and loci"
  type: File
  inputBinding:
    prefix: --sequences
- id: in_output
  doc: The directory in which to store the resulting
  type: Directory
  inputBinding:
    prefix: --output
- id: in_output_format
  doc: The output alignment format.
  type: string
  inputBinding:
    prefix: --output-format
- id: in_no_trim
  doc: Align, but DO NOT trim alignments.
  type: boolean
  inputBinding:
    prefix: --no-trim
- id: in_window
  doc: Sliding window size for trimming.
  type: long
  inputBinding:
    prefix: --window
- id: in_proportion
  doc: "The proportion of taxa required to have sequence at\nalignment ends."
  type: string
  inputBinding:
    prefix: --proportion
- id: in_threshold
  doc: "The proportion of residues required across the window\nin proportion of taxa."
  type: string
  inputBinding:
    prefix: --threshold
- id: in_max_divergence
  doc: "The max proportion of sequence divergence allowed\nbetween any row of the\
    \ alignment and the alignment\nconsensus."
  type: long
  inputBinding:
    prefix: --max-divergence
- id: in_min_length
  doc: The minimum length of alignments to keep.
  type: long
  inputBinding:
    prefix: --min-length
- id: in_ambiguous
  doc: Allow reads in alignments containing N-bases.
  type: boolean
  inputBinding:
    prefix: --ambiguous
- id: in_cores
  doc: "Process alignments in parallel using --cores for\nalignment. This is the number\
    \ of PHYSICAL CPUs.\n"
  type: long
  inputBinding:
    prefix: --cores
- id: in_alignments_dot
  doc: --aligner {muscle,mafft}
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- secapr
- align_sequences
