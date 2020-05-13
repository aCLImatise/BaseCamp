class: CommandLineTool
id: msa2prfl.pl.cwl
inputs:
- id: relax
  doc: consider MSA as partial (allow arbitrary distance at  beginning and end)
  type: boolean
  inputBinding:
    prefix: --relax
- id: block_score_file
  doc: create a log file with blocks from the MSA and their scores
  type: string
  inputBinding:
    prefix: --blockscorefile
- id: setname
  doc: set a name for the profile
  type: string
  inputBinding:
    prefix: --setname
- id: set_desc
  doc: set a description for the profile
  type: string
  inputBinding:
    prefix: --setdesc
- id: set_acc
  doc: set an accession id for the profile
  type: string
  inputBinding:
    prefix: --setacc
- id: info
  doc: provide a text file containing the meta information
  type: string
  inputBinding:
    prefix: --info
outputs: []
cwlVersion: v1.1
baseCommand:
- msa2prfl.pl
