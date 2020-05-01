#!/usr/bin/env cwl-runner

baseCommand:
- get_cgp.py
class: CommandLineTool
cwlVersion: v1.0
id: get_cgp.py
inputs:
- doc: The name of the organism for which the known fusion genes are downloaded, e.g.
    homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'.
  id: organism
  inputBinding:
    prefix: --organism
  type: string
- doc: The output directory where the known fusion genes are stored. Default is '.'.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: The input TSV file containg the data from the CGP database, e.g. cancer_gene_census.tsv.
  id: tsv1
  inputBinding:
    prefix: --tsv1
  type: string
- doc: The input TSV file containg the data from the CGP database.
  id: tsv2
  inputBinding:
    prefix: --tsv2
  type: string
- doc: The CGP server from where the known fusion genes are downloaded. Default is
    'http://cancer.sanger.ac.uk'.
  id: server
  inputBinding:
    prefix: --server
  type: string
