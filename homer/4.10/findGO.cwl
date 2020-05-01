#!/usr/bin/env cwl-runner

baseCommand:
- findGO.pl
class: CommandLineTool
cwlVersion: v1.0
id: findgo.pl
inputs:
- doc: <#> (number of cpus to use)
  id: cpu
  inputBinding:
    prefix: -cpu
  type: boolean
- doc: (convert IDs and run as human [uses homologene])
  id: human
  inputBinding:
    prefix: -human
  type: boolean
- doc: (don't convert IDs)
  id: custom_id
  inputBinding:
    prefix: -customID
  type: boolean
- doc: '[file2.genes] ... (custom ontologies)'
  id: ontology
  inputBinding:
    prefix: -ontology
  type: File
