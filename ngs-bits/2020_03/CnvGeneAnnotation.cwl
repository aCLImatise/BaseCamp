#!/usr/bin/env cwl-runner

baseCommand:
- CnvGeneAnnotation
class: CommandLineTool
cwlVersion: v1.0
id: cnvgeneannotation
inputs:
- doc: Input TSV file containing the CNVs.
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: Output TSV file containing the annotated CNVs.
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Adds an additional column containing only the list of gene names. Default\
    \ value: 'false'"
  id: add_simple_gene_names
  inputBinding:
    prefix: -add_simple_gene_names
  type: boolean
- doc: "Uses the test database instead of on the production database. Default value:\
    \ 'false'"
  id: test
  inputBinding:
    prefix: -test
  type: boolean
- doc: Prints changeloge and exits.
  id: changelog
  inputBinding:
    prefix: --changelog
  type: boolean
- doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  id: tdx
  inputBinding:
    prefix: --tdx
  type: boolean
