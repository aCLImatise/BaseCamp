class: CommandLineTool
id: ../../../ssu_esl_sfetch.cwl
inputs:
- id: output_sequences_file
  doc: ': output sequences to file <f> instead of stdout'
  type: string
  inputBinding:
    prefix: -o
- id: output_sequence_file
  doc: ': output sequence to file named <key>'
  type: boolean
  inputBinding:
    prefix: -O
- id: rename_sequence_s
  doc: ': rename the sequence <s>'
  type: string
  inputBinding:
    prefix: -n
- id: reverse_complement_seqs
  doc: ': reverse complement the seq(s)'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_format
  doc: ': specify that input file is in format <s>'
  type: string
  inputBinding:
    prefix: --informat
- id: tab_file
  doc: ': <namefile> in <f> is Infernal cmsearch tab file'
  type: boolean
  inputBinding:
    prefix: --tabfile
- id: short_name
  doc: ': w/--tabfile, do not add bit score, E value, GC to name'
  type: boolean
  inputBinding:
    prefix: --shortname
- id: tm_in
  doc: ': w/--tabfile, only fetch sequences with bit scores above <x>'
  type: string
  inputBinding:
    prefix: --Tmin
- id: emax
  doc: ': w/--tabfile, only fetch sequences with E-values below <x>  (x>0.)'
  type: string
  inputBinding:
    prefix: --Emax
outputs: []
cwlVersion: v1.1
baseCommand:
- ssu-esl-sfetch
