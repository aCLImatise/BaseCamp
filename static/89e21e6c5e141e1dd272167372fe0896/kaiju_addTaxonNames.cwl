class: CommandLineTool
id: kaiju_addTaxonNames.cwl
inputs:
- id: i
  doc: Name of input file
  type: File
  inputBinding:
    prefix: -i
- id: o
  doc: Name of output file. If not specified, output will be printed to STDOUT.
  type: File
  inputBinding:
    prefix: -o
- id: t
  doc: Name of nodes.dmp file
  type: File
  inputBinding:
    prefix: -t
- id: n
  doc: Name of names.dmp file.
  type: File
  inputBinding:
    prefix: -n
- id: u
  doc: Unclassified reads are not contained in the output.
  type: boolean
  inputBinding:
    prefix: -u
- id: p
  doc: Print full taxon path.
  type: boolean
  inputBinding:
    prefix: -p
- id: r
  doc: 'Print taxon path containing only ranks specified by a comma-separated list,
    for example: superkingdom,phylum,class,order,family,genus,species'
  type: boolean
  inputBinding:
    prefix: -r
- id: v
  doc: Enable verbose output.
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- kaiju-addTaxonNames
