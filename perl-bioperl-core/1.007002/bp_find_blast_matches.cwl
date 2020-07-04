class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bp_find_blast_matches.pl.cwl
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
- id: maximum_evalue_matches
  doc: Maximum e-value for matches (0.01 by default)
  type: boolean
  inputBinding:
    prefix: -e
- id: number_base_to
  doc: Number of base pairs of 5' region to be included with the sequence
  type: boolean
  inputBinding:
    prefix: -p
- id: five
  doc: Number of base pairs of 5' region only, excluding the regular sequence
  type: boolean
  inputBinding:
    prefix: '-5'
- id: three
  doc: Number of base pairs of 3' region only, excluding the regular sequence
  type: boolean
  inputBinding:
    prefix: '-3'
- id: number_display_starting
  doc: Number of top hits to display, starting with the best hit
  type: boolean
  inputBinding:
    prefix: -n
- id: exact_match_display
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
