class: CommandLineTool
id: taxsbp.cwl
inputs:
- id: f
  doc: 'Tab-separated with the fields: sequence id <tab> sequence length <tab> taxonomic
    id [<tab> specialization]'
  type: string
  inputBinding:
    prefix: -f
- id: n
  doc: nodes.dmp from NCBI Taxonomy
  type: string
  inputBinding:
    prefix: -n
- id: m
  doc: merged.dmp from NCBI Taxonomy
  type: string
  inputBinding:
    prefix: -m
- id: b
  doc: 'Approximate number of bins (estimated by total length/bin number). Default:
    50 [Mutually exclusive -l]'
  type: string
  inputBinding:
    prefix: -b
- id: l
  doc: Maximum bin length (in bp). Use this parameter insted of -b to define the number
    of bins [Mutually exclusive -b]
  type: string
  inputBinding:
    prefix: -l
- id: a
  doc: 'Fragment sequences into pieces, output accession will be modified with positions:
    ACCESION/start:end'
  type: string
  inputBinding:
    prefix: -a
- id: o
  doc: Overlap length between fragments [Only valid with -a]
  type: string
  inputBinding:
    prefix: -o
- id: p
  doc: "Pre-cluster sequences into rank/taxid/specialization, so they won't be splitted\
    \ among bins [none,specialization name,taxid,species,genus,...] Default: none"
  type: string
  inputBinding:
    prefix: -p
- id: r
  doc: "Make bins rank/taxid/specialization exclusive, so bins won't have mixed sequences.\
    \ When the chosen rank is not present on a sequence lineage, this sequence will\
    \ be taxid/specialization exclusive. [none,specialization name,taxid,species,genus,...]\
    \ Default: none"
  type: string
  inputBinding:
    prefix: -r
- id: z
  doc: "Specialization name (e.g. assembly, strain). If given, TaxSBP will cluster\
    \ entries on a specialized level after the taxonomic id. The specialization identifier\
    \ should be provided as an extra collumn in the input_file ans should respect\
    \ the taxonomic hiercharchy (one taxid -> multiple specializations / one specialization\
    \ -> one taxid). Default: ''"
  type: string
  inputBinding:
    prefix: -z
- id: u
  doc: "Previously generated files to be updated. Default: ''"
  type: string
  inputBinding:
    prefix: -u
- id: v
  doc: show program's version number and exit
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- taxsbp
