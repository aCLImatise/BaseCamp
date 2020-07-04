class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ribo_swap.cwl
inputs:
- id: output
  doc: 'output directory; default: /tmp/tmpdvlbjbbn'
  type: string
  inputBinding:
    prefix: --output
- id: verbosity
  doc: 'Logger writes debug to file in output dir; this sets verbosity level sent
    to stderr. 1 = debug(), 2 = info(), 3 = warning(), 4 = error() and 5 = critical();
    default: 2'
  type: string
  inputBinding:
    prefix: --verbosity
- id: de_novo_file
  doc: multifasta containing de novo contigs
  type: string
  inputBinding:
    position: 0
- id: de_fere_novo_file
  doc: multifasta containing de fere novo contigs
  type: string
  inputBinding:
    position: 1
- id: bad_contig
  doc: name of the bad contig
  type: string
  inputBinding:
    position: 2
- id: good_contigs
  doc: colon separated good contigs for replacement
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- ribo
- swap
