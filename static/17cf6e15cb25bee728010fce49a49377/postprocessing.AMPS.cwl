class: CommandLineTool
id: postprocessing.AMPS.r.cwl
inputs:
- id: rma_ex
  doc: .out.fld    MALTextract output folder.
  type: boolean
  inputBinding:
    prefix: --rmaex
- id: malte_x
  doc: ".filter    MALTextract filter mode: <default,def_anc>. This script is not\
    \ designed for 'scan' output. Default: <def_anc>."
  type: boolean
  inputBinding:
    prefix: --maltex
- id: threads
  doc: Max number of cores used.
  type: boolean
  inputBinding:
    prefix: --threads
- id: node
  doc: .list        List (\n separated) of nodes to be reported on (aka input species/node
    list used for MALTextract).
  type: boolean
  inputBinding:
    prefix: --node
- id: strict
  doc: .damage    If turned on require 10% minimum damage in first and last bin for
    second  criteria
  type: boolean
  inputBinding:
    prefix: --strict
- id: display
  doc: .all      If turned on plot summary for all files and species
  type: boolean
  inputBinding:
    prefix: --display
outputs: []
cwlVersion: v1.1
baseCommand:
- postprocessing.AMPS.r
