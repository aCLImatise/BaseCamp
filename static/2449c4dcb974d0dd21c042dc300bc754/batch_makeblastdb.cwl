class: CommandLineTool
id: batch_makeblastdb.cwl
inputs:
- id: in_csv
  doc: "csv file of parameters, required\ncsv must be in format: INFILE, DB\nINFILE:\
    \ Required, input fasta file\nDB: Optional, default = accession_db.db\n"
  type: boolean?
  inputBinding:
    prefix: -csv
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/batch_brb:1.0.1--0
cwlVersion: v1.1
baseCommand:
- batch_makeblastdb
