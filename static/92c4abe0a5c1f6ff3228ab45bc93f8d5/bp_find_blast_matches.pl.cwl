class: CommandLineTool
id: bp_find_blast_matches.pl.cwl
inputs:
- id: in_blast
  doc: "BLAST output file to read from. The alignment should use the file\nspecified\
    \ by '-fasta' option ideally"
  type: File?
  inputBinding:
    prefix: -blast
- id: in_fast_a
  doc: "FASTA file to read from. This is where the sequence will be\nextracted from"
  type: boolean?
  inputBinding:
    prefix: -fasta
- id: in_maximum_evalue_matches
  doc: Maximum e-value for matches (0.01 by default)
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_number_base_to
  doc: Number of base pairs of 5' region to be included with the sequence
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_number_only_excluding
  doc: Number of base pairs of 5' region only, excluding the regular
  type: boolean?
  inputBinding:
    prefix: '-5'
- id: in_exact_match_display
  doc: "Exact match to display (this option can't be used in conjunction\nwith '-n'"
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_header
  doc: "The FASTA header to display instead of the default\n"
  type: boolean?
  inputBinding:
    prefix: -header
- id: in_three
  doc: ''
  type: boolean?
  inputBinding:
    prefix: '-3'
- id: in_n
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_blast_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_blast
  doc: "BLAST output file to read from. The alignment should use the file\nspecified\
    \ by '-fasta' option ideally"
  type: File?
  outputBinding:
    glob: $(inputs.in_blast)
hints: []
cwlVersion: v1.1
baseCommand:
- bp_find-blast-matches.pl
