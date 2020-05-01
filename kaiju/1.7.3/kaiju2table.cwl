#!/usr/bin/env cwl-runner

baseCommand:
- kaiju2table
class: CommandLineTool
cwlVersion: v1.0
id: kaiju2table
inputs:
- doc: Name of output file.
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
- doc: 'Taxonomic rank, must be one of: phylum, class, order, family, genus, species'
  id: r
  inputBinding:
    prefix: -r
  type: string
- doc: 'Number in [0, 100], denoting the minimum required percentage for the taxon
    (except viruses) to be reported (default: 0.0)'
  id: m
  inputBinding:
    prefix: -m
  type: double
- doc: 'Integer number > 0, denoting the minimum required number of reads for the
    taxon (except viruses) to be reported (default: 0)'
  id: c
  inputBinding:
    prefix: -c
  type: long
- doc: Expand viruses, which are always shown as full taxon path and read counts are
    not summarized in higher taxonomic levels.
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: Unclassified reads are not counted for the total reads when calculating percentages
    for classified reads.
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
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: Enable verbose output.
  id: v
  inputBinding:
    prefix: -v
  type: boolean
