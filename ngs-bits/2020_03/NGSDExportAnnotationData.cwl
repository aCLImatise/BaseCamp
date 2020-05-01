#!/usr/bin/env cwl-runner

baseCommand:
- NGSDExportAnnotationData
class: CommandLineTool
cwlVersion: v1.0
id: ngsdexportannotationdata
inputs:
- doc: Output variant list as VCF.
  id: variants
  inputBinding:
    prefix: -variants
  type: File
- doc: "Optional BED file containing the genes and the gene info (only germline).\
    \ Default value: ''"
  id: genes
  inputBinding:
    prefix: -genes
  type: File
- doc: "Reference genome FASTA file. If unset 'reference_genome' from the 'settings.ini'\
    \ file is used. Default value: ''"
  id: reference
  inputBinding:
    prefix: -reference
  type: File
- doc: "Uses the test database instead of on the production database. Default value:\
    \ 'false'"
  id: test
  inputBinding:
    prefix: -test
  type: boolean
- doc: "Determines the maximum allel frequency for the variants (default: 0.05). Default\
    \ value: '0.05'"
  id: max_af
  inputBinding:
    prefix: -maxAF
  type: double
- doc: "Defines the number of bases by which the region of each gene is extended.\
    \ Default value: '5000'"
  id: gene_offset
  inputBinding:
    prefix: -gene_offset
  type: long
- doc: "Limit export to the given chromosome. Default value: ''"
  id: chr
  inputBinding:
    prefix: -chr
  type: string
- doc: "Determines the database which is exported. Default value: 'germline' Valid:\
    \ 'germline,somatic'"
  id: mode
  inputBinding:
    prefix: -mode
  type: string
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
