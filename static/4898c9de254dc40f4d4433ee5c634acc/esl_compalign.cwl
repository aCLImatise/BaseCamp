class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/esl_compalign.cwl
inputs:
- id: print_column_statistics
  doc: ': print per column statistics instead of per sequence stats'
  type: boolean
  inputBinding:
    prefix: -c
- id: print_stats_pp
  doc: ': print stats on accuracy versus posterior probability (PP)'
  type: boolean
  inputBinding:
    prefix: -p
- id: p_mask
  doc: ": with -p, only consider columns within mask ('1' columns) in <f>"
  type: string
  inputBinding:
    prefix: --p-mask
- id: c_two_d_file
  doc: ': print per column stats to esl-ssdraw --dfile file <f>'
  type: string
  inputBinding:
    prefix: --c2dfile
- id: amino
  doc: ': <msafile> contains protein alignments'
  type: boolean
  inputBinding:
    prefix: --amino
- id: dna
  doc: ': <msafile> contains DNA alignments'
  type: boolean
  inputBinding:
    prefix: --dna
- id: rna
  doc: ': <msafile> contains RNA alignments'
  type: boolean
  inputBinding:
    prefix: --rna
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-compalign
