class: CommandLineTool
id: kaiju2table.cwl
inputs:
- id: o
  doc: Name of output file.
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
- id: r
  doc: 'Taxonomic rank, must be one of: phylum, class, order, family, genus, species'
  type: string
  inputBinding:
    prefix: -r
- id: m
  doc: 'Number in [0, 100], denoting the minimum required percentage for the taxon
    (except viruses) to be reported (default: 0.0)'
  type: double
  inputBinding:
    prefix: -m
- id: c
  doc: 'Integer number > 0, denoting the minimum required number of reads for the
    taxon (except viruses) to be reported (default: 0)'
  type: long
  inputBinding:
    prefix: -c
- id: e
  doc: Expand viruses, which are always shown as full taxon path and read counts are
    not summarized in higher taxonomic levels.
  type: boolean
  inputBinding:
    prefix: -e
- id: u
  doc: Unclassified reads are not counted for the total reads when calculating percentages
    for classified reads.
  type: boolean
  inputBinding:
    prefix: -u
- id: p
  doc: Print full taxon path.
  type: boolean
  inputBinding:
    prefix: -p
- id: l
  doc: 'Print taxon path containing only ranks specified by a comma-separated list,
    for example: superkingdom,phylum,class,order,family,genus,species'
  type: boolean
  inputBinding:
    prefix: -l
- id: v
  doc: Enable verbose output.
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- kaiju2table
