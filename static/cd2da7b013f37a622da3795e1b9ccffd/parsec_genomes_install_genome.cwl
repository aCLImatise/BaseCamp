class: CommandLineTool
id: parsec_genomes_install_genome.cwl
inputs:
- id: in_func
  doc: "Allowed values: 'download', Download and index;\n'index', Index only  [default:\
    \ download]"
  type: string?
  inputBinding:
    prefix: --func
- id: in_source
  doc: "Data source for this build. Can be: UCSC, Ensembl,\nNCBI, URL"
  type: string?
  inputBinding:
    prefix: --source
- id: in_db_key
  doc: "DB key of the build to download, ignored unless 'UCSC'\nis specified as the\
    \ source"
  type: string?
  inputBinding:
    prefix: --dbkey
- id: in_ncbi_name
  doc: "NCBI's genome identifier, ignored unless NCBI is\nspecified as the source"
  type: string?
  inputBinding:
    prefix: --ncbi_name
- id: in_ensembl_db_key
  doc: "Ensembl's genome identifier, ignored unless Ensembl is\nspecified as the source"
  type: string?
  inputBinding:
    prefix: --ensembl_dbkey
- id: in_url_db_key
  doc: "DB key to use for this build, ignored unless URL is\nspecified as the source"
  type: string?
  inputBinding:
    prefix: --url_dbkey
- id: in_indexers
  doc: "POST array of indexers to run after downloading\n(indexers[] = first, indexers[]\
    \ = second, ...)"
  type: string?
  inputBinding:
    prefix: --indexers
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- parsec
- genomes
- install_genome
