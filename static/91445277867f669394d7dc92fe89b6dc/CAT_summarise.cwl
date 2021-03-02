class: CommandLineTool
id: CAT_summarise.cwl
inputs:
- id: in_input_file
  doc: "Path to named CAT contig classification file or BAT\nbin classification file.\
    \ Currently only official ranks\nare supported, and only classification files\n\
    containing a single classification per contig / bin."
  type: boolean?
  inputBinding:
    prefix: --input_file
- id: in_output_file
  doc: Path to output file.
  type: File?
  inputBinding:
    prefix: --output_file
- id: in_contigs_fast_a
  doc: "Path to contigs fasta file. This is required if you\nwant to summarise a contig\
    \ classification file."
  type: boolean?
  inputBinding:
    prefix: --contigs_fasta
- id: in_force
  doc: Force overwrite existing files.
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_quiet
  doc: Suppress verbosity.
  type: boolean?
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Path to output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- CAT
- summarise
