#!/usr/bin/env cwl-runner

baseCommand:
- transMapPslToGenePred
class: CommandLineTool
cwlVersion: v1.0
id: transmappsltogenepred
inputs:
- doc: ''
  id: mrna_to_gene
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: source_gene_pred
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: mapped_psl
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: mapped_gene_pred
  inputBinding:
    position: 3
  type: string
