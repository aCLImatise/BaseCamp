class: CommandLineTool
id: ../../../esl_compalign.cwl
inputs:
- id: in_print_column_statistics
  doc: ': print per column statistics instead of per sequence stats'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_print_stats_accuracy
  doc: ': print stats on accuracy versus posterior probability (PP)'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_p_mask
  doc: ": with -p, only consider columns within mask ('1' columns) in <f>"
  type: long
  inputBinding:
    prefix: --p-mask
- id: in_c_two_d_file
  doc: ': print per column stats to esl-ssdraw --dfile file <f>'
  type: long
  inputBinding:
    prefix: --c2dfile
- id: in_amino
  doc: ': <msafile> contains protein alignments'
  type: boolean
  inputBinding:
    prefix: --amino
- id: in_dna
  doc: ': <msafile> contains DNA alignments'
  type: boolean
  inputBinding:
    prefix: --dna
- id: in_rna
  doc: ': <msafile> contains RNA alignments'
  type: boolean
  inputBinding:
    prefix: --rna
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- esl-compalign
