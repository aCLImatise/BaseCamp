class: CommandLineTool
id: augur_align.cwl
inputs:
- id: in_sequences
  doc: 'sequences to align (default: None)'
  type: string[]
  inputBinding:
    prefix: --sequences
- id: in_output
  doc: 'output file (default: alignment.fasta)'
  type: File
  inputBinding:
    prefix: --output
- id: in_n_threads
  doc: "number of threads to use; specifying the value 'auto'\nwill cause the number\
    \ of available CPU cores on your\nsystem, if determinable, to be used (default:\
    \ 1)"
  type: long
  inputBinding:
    prefix: --nthreads
- id: in_method
  doc: 'alignment program to use (default: mafft)'
  type: string
  inputBinding:
    prefix: --method
- id: in_reference_name
  doc: "strip insertions relative to reference sequence; use\nif the reference is\
    \ already in the input sequences\n(default: None)"
  type: string
  inputBinding:
    prefix: --reference-name
- id: in_reference_sequence
  doc: "Add this reference sequence to the dataset & strip\ninsertions relative to\
    \ this. Use if the reference is\nNOT already in the input sequences (default:\
    \ None)"
  type: File
  inputBinding:
    prefix: --reference-sequence
- id: in_remove_reference
  doc: "remove reference sequence from the alignment (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: --remove-reference
- id: in_fill_gaps
  doc: "If gaps represent missing data rather than true\nindels, replace by N after\
    \ aligning. (default: False)"
  type: boolean
  inputBinding:
    prefix: --fill-gaps
- id: in_existing_alignment
  doc: "An existing alignment to which the sequences will be\nadded. The ouput alignment\
    \ will be the same length as\nthis existing alignment. (default: False)"
  type: long
  inputBinding:
    prefix: --existing-alignment
- id: in_debug
  doc: "Produce extra files (e.g. pre- and post-aligner files)\nwhich can help with\
    \ debugging poor alignments.\n(default: False)\n"
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'output file (default: alignment.fasta)'
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- augur
- align
