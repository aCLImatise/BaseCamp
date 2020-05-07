class: CommandLineTool
id: mapsembler2_extremities.cwl
inputs:
- id: k
  doc: "(1 arg) :    kmer size that will be used for mapsembler2  [default '']"
  type: boolean
  inputBinding:
    prefix: --k
- id: starters
  doc: "(1 arg) :    starters fasta file  [default '']"
  type: boolean
  inputBinding:
    prefix: --starters
- id: reads
  doc: "(1 arg) :    reads dataset file name. Several reads sets can be provided,\
    \ surrounded by \"'s and separated by a space (e.g. --reads \"reads1.fa reads2.fa\"\
    )  [default '']"
  type: boolean
  inputBinding:
    prefix: --reads
- id: output
  doc: "(1 arg) :    output substarters file name  [default '']"
  type: boolean
  inputBinding:
    prefix: --output
- id: min_solid_sub_km_er
  doc: "(1 arg) :    minimim abundance to keep a subkmer  [default '3']"
  type: boolean
  inputBinding:
    prefix: --min-solid-subkmer
- id: debug
  doc: '(0 arg) :    debugging'
  type: boolean
  inputBinding:
    prefix: -debug
- id: nb_cores
  doc: "(1 arg) :    number of cores  [default '0']"
  type: boolean
  inputBinding:
    prefix: -nb-cores
- id: verbose
  doc: "(1 arg) :    verbosity level  [default '1']"
  type: boolean
  inputBinding:
    prefix: -verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- mapsembler2_extremities
