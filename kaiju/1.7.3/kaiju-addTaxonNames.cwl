#!/usr/bin/env cwl-runner

baseCommand:
- kaiju-addTaxonNames
class: CommandLineTool
cwlVersion: v1.0
id: kaiju-addtaxonnames
inputs:
- doc: Name of input file
  id: i
  inputBinding:
    prefix: -i
  type: File
- doc: Name of output file. If not specified, output will be printed to STDOUT.
  id: o
  inputBinding:
    prefix: -o
  type: File
- doc: Name of nodes.dmp file
  id: t
  inputBinding:
    prefix: -t
  type: File
- doc: Name of names.dmp file.
  id: n
  inputBinding:
    prefix: -n
  type: File
- doc: Unclassified reads are not contained in the output.
  id: u
  inputBinding:
    prefix: -u
  type: boolean
- doc: Print full taxon path.
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: 'Print taxon path containing only ranks specified by a comma-separated list,
    for example: superkingdom,phylum,class,order,family,genus,species'
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: Enable verbose output.
  id: v
  inputBinding:
    prefix: -v
  type: boolean
