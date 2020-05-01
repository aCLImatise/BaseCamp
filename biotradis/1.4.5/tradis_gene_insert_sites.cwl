#!/usr/bin/env cwl-runner

baseCommand:
- tradis_gene_insert_sites
class: CommandLineTool
cwlVersion: v1.0
id: tradis_gene_insert_sites
inputs:
- doc: '|output_suffix     <suffix to add to output files (optional, default = tradis_gene_insert_sites.csv)>'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: <trim insertion sites from 5' end of gene (optional, default = 0)>
  id: trim5
  inputBinding:
    prefix: -trim5
  type: boolean
- doc: <trim insertion sites from 3' end of gene (optional, default = 0)>
  id: trim3
  inputBinding:
    prefix: -trim3
  type: boolean
- doc: '|joined_output     <output a single file with all info. default = one file
    per input file>'
  id: j
  inputBinding:
    prefix: -j
  type: boolean
