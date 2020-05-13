class: CommandLineTool
id: gaas_ncbi_get_reference_data.pl.cwl
inputs:
- id: list
  doc: List of all available databases
  type: string
  inputBinding:
    prefix: --list
- id: organisms
  doc: 'The names of the species to query data from. Species name format: Genus_species
    (e.g. Gallus_gallus). When querying several organisms please follow this nomenclature:
    species1:species2:species3'
  type: boolean
  inputBinding:
    prefix: --organisms
- id: dbs
  doc: 'The names of the NCBI databases to query for data. Default: nucest, protein
    (see --list for options). When querying several databases please follow this nomenclature:
    db1:db2:db3'
  type: string
  inputBinding:
    prefix: --dbs
- id: format
  doc: 'The file format to produce. Not all databases can write all formats! Default:
    fasta'
  type: string
  inputBinding:
    prefix: --format
- id: outfile
  doc: The name of the output file. By default the output is the standard output
  type: string
  inputBinding:
    prefix: --outfile
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_ncbi_get_reference_data.pl
