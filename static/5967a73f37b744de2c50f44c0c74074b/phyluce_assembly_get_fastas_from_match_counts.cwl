class: CommandLineTool
id: phyluce_assembly_get_fastas_from_match_counts.cwl
inputs:
- id: contigs
  doc: 'The directory containing the assembled contigs in which you searched for UCE
    loci. (default: None)'
  type: string
  inputBinding:
    prefix: --contigs
- id: locus_db
  doc: 'The SQL database file holding probe matches to targeted loci (usually "lastz/probe.matches.sqlite").
    (default: None)'
  type: string
  inputBinding:
    prefix: --locus-db
- id: match_count_output
  doc: 'The output file containing taxa and loci in complete/incomplete matrices generated
    by get_match_counts.py. (default: None)'
  type: string
  inputBinding:
    prefix: --match-count-output
- id: incomplete_matrix
  doc: 'The path to the outfile for incomplete-matrix records. Required when processing
    an incomplete data matrix. (default: False)'
  type: string
  inputBinding:
    prefix: --incomplete-matrix
- id: output
  doc: 'The path to the output FASTA file you want to create. (default: None)'
  type: string
  inputBinding:
    prefix: --output
- id: verbosity
  doc: 'The logging level to use. (default: INFO)'
  type: string
  inputBinding:
    prefix: --verbosity
- id: log_path
  doc: 'The path to a directory to hold logs. (default: None)'
  type: string
  inputBinding:
    prefix: --log-path
- id: extend_locus_db
  doc: 'An SQLlite database file holding probe matches to other targeted loci. (default:
    None)'
  type: string
  inputBinding:
    prefix: --extend-locus-db
- id: extend_locus_contigs
  doc: 'A directory holding the assembled contigs (from genomes or another study)
    referenced by --extend- locus-db. (default: None)'
  type: string
  inputBinding:
    prefix: --extend-locus-contigs
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_assembly_get_fastas_from_match_counts
