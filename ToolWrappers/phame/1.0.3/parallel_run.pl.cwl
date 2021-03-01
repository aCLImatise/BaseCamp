class: CommandLineTool
id: parallel_run.pl.cwl
inputs:
- id: in_file_directory
  doc: File directory
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_program_rundefault_mafft
  doc: "program to run\ndefault: mafft"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_number_of_threads
  doc: Number of threads
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_muscle
  doc: "muscle options\ndefault: \"-diags\"\ntype \"muscle\" to see additional muscle\
    \ options"
  type: string?
  inputBinding:
    prefix: -muscle
- id: in_translate
  doc: ':  Translate DNA to amino acid'
  type: boolean?
  inputBinding:
    prefix: -translate
- id: in_one_line
  doc: ':     Write multi-line fasta sequences to one line'
  type: boolean?
  inputBinding:
    prefix: -oneline
- id: in_pal_two_nal
  doc: ':    Convert amino acid alignment to codon alignment, needs DNA fasta file'
  type: boolean?
  inputBinding:
    prefix: -pal2nal
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- parallel_run.pl
