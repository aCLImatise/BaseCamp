class: CommandLineTool
id: unitig_counter.cwl
inputs:
- id: gzip
  doc: '(0 arg) :    Compress unitig output using gzip.'
  type: boolean
  inputBinding:
    prefix: -gzip
- id: strains
  doc: '(1 arg) :    A text file describing the strains containing 2 columns: 1) ID
    of the strain; 2) Path to a multi-fasta file containing the sequences of the strain.
    This file needs a header.'
  type: boolean
  inputBinding:
    prefix: -strains
- id: k
  doc: "(1 arg) :    K-mer size.  [default '31']"
  type: boolean
  inputBinding:
    prefix: -k
- id: output
  doc: "(1 arg) :    Path to the folder where the final and temporary files will be\
    \ stored.  [default 'output']"
  type: boolean
  inputBinding:
    prefix: -output
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
- id: version
  doc: '(0 arg) :    version'
  type: boolean
  inputBinding:
    prefix: -version
outputs: []
cwlVersion: v1.1
baseCommand:
- unitig-counter
