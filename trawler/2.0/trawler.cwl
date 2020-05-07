class: CommandLineTool
id: trawler.cwl
inputs:
- id: directory
  doc: (optional) output directory. [DEFAULT = "TRAWLER_HOME/myResults"]
  type: boolean
  inputBinding:
    prefix: -directory
- id: dir_id
  doc: (optional) gives an id to the results directory. [DEFAULT = NULL]
  type: boolean
  inputBinding:
    prefix: -dir_id
- id: xtra_len
  doc: (optional) add bases around the motifs for the logo. [DEFAULT = 0]
  type: boolean
  inputBinding:
    prefix: -xtralen
- id: alignments
  doc: (optional) file containing the list of files containing the aligned sequences
    (see README file for more info) [DEFAULT = NULL]
  type: boolean
  inputBinding:
    prefix: -alignments
- id: ref_species
  doc: (optional) name of the reference species [DEFAULT = NULL]
  type: boolean
  inputBinding:
    prefix: -ref_species
- id: clustering
  doc: (optional) if 1 the program clusters the instances, if 0 no clustering. [DEFAULT
    = 1]
  type: boolean
  inputBinding:
    prefix: -clustering
- id: web
  doc: (optional) if 1 the output will be a web page with all the information [DEFAULT
    = 1]
  type: boolean
  inputBinding:
    prefix: -web
outputs: []
cwlVersion: v1.1
baseCommand:
- trawler
