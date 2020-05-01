#!/usr/bin/env cwl-runner

baseCommand:
- gaas_orthomcl_analyzeOG.pl
class: CommandLineTool
cwlVersion: v1.0
id: gaas_orthomcl_analyzeog.pl
inputs:
- doc: Tree file in nhx format. If provided the analyse will focuse only on species
    present in the tree. When no tree is provided, a species tree will be created
    on the fly using the NCBI taxonomy database online according to the species present
    among the OG.
  id: tree
  inputBinding:
    prefix: --tree
  type: string
- doc: taxid or scientific name (use underscore instead of spaces). It allows to focus
    the analysis only on OG containg the species defined.
  id: species
  inputBinding:
    prefix: --species
  type: string
