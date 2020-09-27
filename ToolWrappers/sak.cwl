class: CommandLineTool
id: sak.cwl
inputs:
- id: in_version_check
  doc: "Turn this option off to disable version update notifications of the\napplication.\
    \ One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\nDefault: 1."
  type: boolean
  inputBinding:
    prefix: --version-check
- id: in_out_path
  doc: "Path to the resulting file. If omitted, result is printed to stdout\nin FastQ\
    \ format. Valid filetypes are: .sam, .raw, .frn, .fq, .fna,\n.ffn, .fastq, .fasta,\
    \ .faa, .fa, and .bam."
  type: File
  inputBinding:
    prefix: --out-path
- id: in_rev_comp
  doc: Reverse-complement output.
  type: boolean
  inputBinding:
    prefix: --revcomp
- id: in_max_length
  doc: Maximal number of sequence characters to write out.
  type: long
  inputBinding:
    prefix: --max-length
- id: in_sequence
  doc: "of INTEGER's\nSelect the given sequence for extraction by 0-based index."
  type: long
  inputBinding:
    prefix: --sequence
- id: in_sequence_name
  doc: "of STRING's\nSelect sequence with name prefix being NAME."
  type: string
  inputBinding:
    prefix: --sequence-name
- id: in_sequences
  doc: "of STRING's\nSelect sequences from-to where from and to are 0-based indices."
  type: string
  inputBinding:
    prefix: --sequences
- id: in_in_fix
  doc: "of STRING's\nSelect characters from-to where from and to are 0-based indices."
  type: string
  inputBinding:
    prefix: --infix
- id: in_line_length
  doc: "Set line length in output file. See section Line Length for details.\nIn range\
    \ [-1..inf]."
  type: long
  inputBinding:
    prefix: --line-length
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_path
  doc: "Path to the resulting file. If omitted, result is printed to stdout\nin FastQ\
    \ format. Valid filetypes are: .sam, .raw, .frn, .fq, .fna,\n.ffn, .fastq, .fasta,\
    \ .faa, .fa, and .bam."
  type: File
  outputBinding:
    glob: $(inputs.in_out_path)
cwlVersion: v1.1
baseCommand:
- sak
