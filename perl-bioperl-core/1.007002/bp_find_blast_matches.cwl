class: CommandLineTool
id: bp_find_blast_matches.pl.cwl
inputs:
- id: blast
  doc: BLAST output file to read from. The alignment should use the file specified
    by '-fasta' option ideally
  type: boolean
  inputBinding:
    prefix: -blast
- id: fast_a
  doc: FASTA file to read from. This is where the sequence will be extracted from
  type: boolean
  inputBinding:
    prefix: -fasta
- id: n
  doc: Number of top hits to display, starting with the best hit
  type: boolean
  inputBinding:
    prefix: -n
- id: o
  doc: Exact match to display (this option can't be used in conjunction with '-n'
  type: boolean
  inputBinding:
    prefix: -o
- id: header
  doc: The FASTA header to display instead of the default
  type: boolean
  inputBinding:
    prefix: -header
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_find-blast-matches.pl
