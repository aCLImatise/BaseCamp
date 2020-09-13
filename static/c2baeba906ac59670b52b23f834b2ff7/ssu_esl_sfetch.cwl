class: CommandLineTool
id: ../../../ssu_esl_sfetch.cwl
inputs:
- id: in_output_sequences_file
  doc: ': output sequences to file <f> instead of stdout'
  type: File
  inputBinding:
    prefix: -o
- id: in_output_sequence_file
  doc: ': output sequence to file named <key>'
  type: File
  inputBinding:
    prefix: -O
- id: in_rename_sequence_s
  doc: ': rename the sequence <s>'
  type: string
  inputBinding:
    prefix: -n
- id: in_reverse_complement_seqs
  doc: ': reverse complement the seq(s)'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_retrieve_subsequence_coords
  doc: ': retrieve subsequence coords <from>..<to>'
  type: string
  inputBinding:
    prefix: -c
- id: in_namefile_f_contains
  doc: ': <namefile> in <f> contains subseq coords too'
  type: boolean
  inputBinding:
    prefix: -C
- id: in_in_format
  doc: ': specify that input file is in format <s>'
  type: File
  inputBinding:
    prefix: --informat
- id: in_tab_file
  doc: ': <namefile> in <f> is Infernal cmsearch tab file'
  type: boolean
  inputBinding:
    prefix: --tabfile
- id: in_short_name
  doc: ': w/--tabfile, do not add bit score, E value, GC to name'
  type: boolean
  inputBinding:
    prefix: --shortname
- id: in_tm_in
  doc: ': w/--tabfile, only fetch sequences with bit scores above <x>'
  type: string
  inputBinding:
    prefix: --Tmin
- id: in_emax
  doc: ': w/--tabfile, only fetch sequences with E-values below <x>  (x>0.)'
  type: long
  inputBinding:
    prefix: --Emax
- id: in_index
  doc: ''
  type: File
  inputBinding:
    prefix: --index
- id: in_f
  doc: ''
  type: File
  inputBinding:
    prefix: -f
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_sequences_file
  doc: ': output sequences to file <f> instead of stdout'
  type: File
  outputBinding:
    glob: $(inputs.in_output_sequences_file)
- id: out_output_sequence_file
  doc: ': output sequence to file named <key>'
  type: File
  outputBinding:
    glob: $(inputs.in_output_sequence_file)
cwlVersion: v1.1
baseCommand:
- ssu-esl-sfetch
