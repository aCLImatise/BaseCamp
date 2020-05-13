class: CommandLineTool
id: chado_insert_organism.cwl
inputs:
- id: dbname
  doc: name of the database
  type: string
  inputBinding:
    position: 0
- id: verbose
  doc: verbose mode
  type: boolean
  inputBinding:
    prefix: --verbose
- id: config
  doc: YAML file containing connection details
  type: string
  inputBinding:
    prefix: --config
- id: use_password
  doc: 'connect with password (default: no password)'
  type: boolean
  inputBinding:
    prefix: --use_password
- id: genus
  doc: genus of the organism
  type: string
  inputBinding:
    prefix: --genus
- id: species
  doc: species of the organism
  type: string
  inputBinding:
    prefix: --species
- id: infraspecific_name
  doc: infraspecific name (strain) of the organism
  type: string
  inputBinding:
    prefix: --infraspecific_name
- id: abbreviation
  doc: abbreviation/short name of the organism
  type: string
  inputBinding:
    prefix: --abbreviation
- id: common_name
  doc: 'common name of the organism (default: use abbreviation, if provided)'
  type: string
  inputBinding:
    prefix: --common_name
- id: comment
  doc: comment
  type: string
  inputBinding:
    prefix: --comment
- id: genome_version
  doc: version number of the genome
  type: string
  inputBinding:
    prefix: --genome_version
- id: tax_on_id
  doc: NCBI taxon ID
  type: string
  inputBinding:
    prefix: --taxon_id
- id: wikidata_id
  doc: ID of the organism on Wikidata
  type: string
  inputBinding:
    prefix: --wikidata_id
outputs: []
cwlVersion: v1.1
baseCommand:
- chado
- insert
- organism
