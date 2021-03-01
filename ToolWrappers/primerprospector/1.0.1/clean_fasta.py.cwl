class: CommandLineTool
id: clean_fasta.py.cwl
inputs:
- id: in_verbose
  doc: "Print information during execution -- useful for\ndebugging [default: False]"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_output_dir
  doc: "Output directory for filtered fasta file(s). [default:\n.]"
  type: File?
  inputBinding:
    prefix: --output_dir
- id: in_gap_chars
  doc: 'Filter gap characters "." and "-" [default: True]'
  type: boolean?
  inputBinding:
    prefix: --gap_chars
- id: in_space_chars
  doc: 'Filter space characters. [default: True]'
  type: boolean?
  inputBinding:
    prefix: --space_chars
- id: in_convert_uracil
  doc: 'Convert Uracil "U" characters to "T". [default: True]'
  type: boolean?
  inputBinding:
    prefix: --convert_uracil
- id: in_cap_seqs
  doc: 'Capitalize filtered sequences [default: True]'
  type: boolean?
  inputBinding:
    prefix: --cap_seqs
- id: in_fast_a_seqs
  doc: "Target fasta file(s) to filter. Separate multiple\nfiles with a colon. [REQUIRED]\n"
  type: File?
  inputBinding:
    prefix: --fasta_seqs
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "Output directory for filtered fasta file(s). [default:\n.]"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- clean_fasta.py
