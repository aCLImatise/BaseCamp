class: CommandLineTool
id: ../../../smof_reverse.cwl
inputs:
- id: in_set_alphabet_supported
  doc: is set. The extended nucleotide alphabet is supported.
  type: string
  inputBinding:
    prefix: -c
- id: in_complement
  doc: take the reverse complement of the sequence
  type: boolean
  inputBinding:
    prefix: --complement
- id: in_no_validate
  doc: "do not check whether the sequence is DNA before\nreverse complement"
  type: boolean
  inputBinding:
    prefix: --no-validate
- id: in_preserve_color
  doc: Preserve incoming color
  type: boolean
  inputBinding:
    prefix: --preserve-color
- id: in_force_color
  doc: print in color even to non-tty (DANGEROUS)
  type: boolean
  inputBinding:
    prefix: --force-color
- id: in_input
  doc: input fasta sequence (default = stdin)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- smof
- reverse
