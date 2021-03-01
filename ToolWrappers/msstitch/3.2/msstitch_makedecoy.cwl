class: CommandLineTool
id: msstitch_makedecoy.cwl
inputs:
- id: in_input_file_format
  doc: Input file of {} format
  type: File?
  inputBinding:
    prefix: -i
- id: in_directory_to_output
  doc: Directory to output in
  type: Directory?
  inputBinding:
    prefix: -d
- id: in_output_file
  doc: Output file
  type: File?
  inputBinding:
    prefix: -o
- id: in_dbfile
  doc: Database lookup file
  type: File?
  inputBinding:
    prefix: --dbfile
- id: in_scramble
  doc: "Decoy scrambling method, use: \"tryp_rev\": tryptic\nreverse, or \"prot_rev\"\
    : full (protein) reverse."
  type: string?
  inputBinding:
    prefix: --scramble
- id: in_ignore_target_hits
  doc: "Do not remove tryptic peptides from sequence where\nthey match target DB"
  type: boolean?
  inputBinding:
    prefix: --ignore-target-hits
- id: in_no_trypsin
  doc: "Do not trypsinize. User is expected to deliver\napretrypsinized FASTA file"
  type: boolean?
  inputBinding:
    prefix: --notrypsin
- id: in_misc_leav
  doc: "Amount of missed cleavages to allow when trypsinizing,\ndefault is 0"
  type: long?
  inputBinding:
    prefix: --miscleav
- id: in_min_len
  doc: Minimum length of peptide to be included
  type: long?
  inputBinding:
    prefix: --minlen
- id: in_max_shuffle
  doc: "Amount of times to attempt to shuffle a decoy reversed\npeptide to make it\
    \ not match target peptides, before\ndiscarding it. Used when using tryptic peptide\n\
    reversal (not protein reversal)\n"
  type: long?
  inputBinding:
    prefix: --maxshuffle
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_directory_to_output
  doc: Directory to output in
  type: Directory?
  outputBinding:
    glob: $(inputs.in_directory_to_output)
- id: out_output_file
  doc: Output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- msstitch
- makedecoy
