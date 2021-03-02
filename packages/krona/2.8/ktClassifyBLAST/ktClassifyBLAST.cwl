class: CommandLineTool
id: ktClassifyBLAST.cwl
inputs:
- id: in_blast_output
  doc: "File containing BLAST results in tabular format (\"Hit table\n(text)\" when\
    \ downloading from NCBI). If running BLAST locally,\nsubject IDs in the local\
    \ database must contain accession\nnumbers, either bare or in the fourth field\
    \ of the\npipe-separated (\"gi|12345|xx|ABC123.1|\") format.\n_________"
  type: string
  inputBinding:
    position: 0
- id: in_e_value_dot
  doc: '[-b]           Use bit score for average scores instead of log[10] e-value.'
  type: string
  inputBinding:
    position: 0
- id: in_databases_dot
  doc: ________
  type: string
  inputBinding:
    position: 0
- id: in_query_id
  doc: The query ID as it appears in the BLAST results.
  type: string
  inputBinding:
    position: 0
- id: in_taxid
  doc: "The NCBI taxonomy ID the query was assigned to (or -1 if it has no\nhits)."
  type: string
  inputBinding:
    position: 1
- id: in_score
  doc: "The score of the assignment(s); by default, the average E-value of\n\"best\"\
    \ hits (see -p, -b)."
  type: string
  inputBinding:
    position: 2
- id: in_count
  doc: The number of assignments.
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/krona:2.8--pl526_0
cwlVersion: v1.1
baseCommand:
- ktClassifyBLAST
