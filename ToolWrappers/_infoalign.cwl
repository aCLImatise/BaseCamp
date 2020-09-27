class: CommandLineTool
id: _infoalign.cwl
inputs:
- id: in_matrix
  doc: "matrix     [EBLOSUM62 for protein, EDNAFULL for DNA]\nThis is the scoring\
    \ matrix file used when\ncomparing sequences. By default it is the\nfile 'EBLOSUM62'\
    \ (for proteins) or the file\n'EDNAFULL' (for nucleic sequences). These\nfiles\
    \ are found in the 'data' directory of\nthe EMBOSS installation."
  type: boolean
  inputBinding:
    prefix: -matrix
- id: in_refseq
  doc: "string     [0] If you give the number in the alignment\nor the name of a sequence,\
    \ it will be taken\nto be the reference sequence. The reference\nsequence is the\
    \ one against which all the\nother sequences are compared. If this is set\nto\
    \ 0 then the consensus sequence will be\nused as the reference sequence. By default\n\
    the consensus sequence is used as the\nreference sequence. (Any string)"
  type: boolean
  inputBinding:
    prefix: -refseq
- id: in_html
  doc: boolean    [N] Format output as an HTML table
  type: boolean
  inputBinding:
    prefix: -html
- id: in_plurality
  doc: "float      [50.0] Set a cut-off for the % of positive\nscoring matches below\
    \ which there is no\nconsensus. The default plurality is taken as\n50% of the\
    \ total weight of all the\nsequences in the alignment. (Number from\n0.000 to\
    \ 100.000)"
  type: boolean
  inputBinding:
    prefix: -plurality
- id: in_identity
  doc: "float      [0.0] Provides the facility of setting the\nrequired number of\
    \ identities at a position\nfor it to give a consensus. Therefore, if\nthis is\
    \ set to 100% only columns of\nidentities contribute to the consensus.\n(Number\
    \ from 0.000 to 100.000)"
  type: boolean
  inputBinding:
    prefix: -identity
- id: in_only
  doc: "boolean    [N] This is a way of shortening the command\nline if you only want\
    \ a few things to be\ndisplayed. Instead of specifying:\n'-nohead -nousa -noname\
    \ -noalign -nogaps\n-nogapcount -nosimcount -noidcount\n-nodiffcount -noweight'\n\
    to get only the sequence length output, you\ncan specify\n'-only -seqlength'"
  type: boolean
  inputBinding:
    prefix: -only
- id: in_heading
  doc: boolean    [@(!$(only))] Display column headings
  type: boolean
  inputBinding:
    prefix: -heading
- id: in_usa
  doc: boolean    [@(!$(only))] Display the USA of the
  type: boolean
  inputBinding:
    prefix: -usa
- id: in_seq_length
  doc: boolean    [@(!$(only))] Display 'seqlength' column
  type: boolean
  inputBinding:
    prefix: -seqlength
- id: in_align_length
  doc: boolean    [@(!$(only))] Display 'alignlength' column
  type: boolean
  inputBinding:
    prefix: -alignlength
- id: in_gaps
  doc: boolean    [@(!$(only))] Display number of gaps
  type: boolean
  inputBinding:
    prefix: -gaps
- id: in_gap_count
  doc: boolean    [@(!$(only))] Display number of gap
  type: boolean
  inputBinding:
    prefix: -gapcount
- id: in_description
  doc: boolean    [@(!$(only))] Display 'description' column
  type: boolean
  inputBinding:
    prefix: -description
- id: in_sequence
  doc: -name               boolean    [@(!$(only))] Display 'name' column
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _infoalign
