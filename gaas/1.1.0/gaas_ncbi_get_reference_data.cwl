#!/usr/bin/env cwl-runner

baseCommand:
- gaas_ncbi_get_reference_data.pl
class: CommandLineTool
cwlVersion: v1.0
id: gaas_ncbi_get_reference_data.pl
inputs:
- doc: List of all available databases
  id: list
  inputBinding:
    prefix: --list
  type: string
- doc: 'The names of the species to query data from. Species name format: Genus_species
    (e.g. Gallus_gallus). When querying several organisms please follow this nomenclature:
    species1:species2:species3'
  id: organisms
  inputBinding:
    prefix: --organisms
  type: boolean
- doc: 'The names of the NCBI databases to query for data. Default: nucest, protein
    (see --list for options). When querying several databases please follow this nomenclature:
    db1:db2:db3'
  id: dbs
  inputBinding:
    prefix: --dbs
  type: string
- doc: 'The file format to produce. Not all databases can write all formats! Default:
    fasta'
  id: format
  inputBinding:
    prefix: --format
  type: string
- doc: The name of the output file. By default the output is the standard output
  id: outfile
  inputBinding:
    prefix: --outfile
  type: string
