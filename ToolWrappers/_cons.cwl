class: CommandLineTool
id: _cons.cwl
inputs:
- id: in_data_file
  doc: "matrix     [EBLOSUM62 for protein, EDNAFULL for DNA]\nThis is the scoring\
    \ matrix file used when\ncomparing sequences. By default it is the\nfile 'EBLOSUM62'\
    \ (for proteins) or the file\n'EDNAFULL' (for nucleic sequences). These\nfiles\
    \ are found in the 'data' directory of\nthe EMBOSS installation."
  type: boolean
  inputBinding:
    prefix: -datafile
- id: in_plurality
  doc: "float      [Half the total sequence weighting] Set a\ncut-off for the number\
    \ of positive matches\nbelow which there is no consensus. The\ndefault plurality\
    \ is taken as half the total\nweight of all the sequences in the\nalignment. (Any\
    \ numeric value)"
  type: boolean
  inputBinding:
    prefix: -plurality
- id: in_identity
  doc: "integer    [0] Provides the facility of setting the\nrequired number of identities\
    \ at a site for\nit to give a consensus at that position.\nTherefore, if this\
    \ is set to the number of\nsequences in the alignment only columns of\nidentities\
    \ contribute to the consensus.\n(Integer 0 or more)"
  type: boolean
  inputBinding:
    prefix: -identity
- id: in_set_case
  doc: "float      [@( $(sequence.totweight) / 2)] Sets the\nthreshold for the positive\
    \ matches above\nwhich the consensus is is upper-case and\nbelow which the consensus\
    \ is in lower-case.\n(Any numeric value)"
  type: boolean
  inputBinding:
    prefix: -setcase
- id: in_name
  doc: string     Name of the consensus sequence (Any string)
  type: boolean
  inputBinding:
    prefix: -name
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _cons
