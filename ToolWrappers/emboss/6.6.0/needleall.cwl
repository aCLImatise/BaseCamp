class: CommandLineTool
id: needleall.cwl
inputs:
- id: in_gap_open
  doc: "float      [10.0 for any sequence] The gap open penalty\nis the score taken\
    \ away when a gap is\ncreated. The best value depends on the\nchoice of comparison\
    \ matrix. The default\nvalue assumes you are using the EBLOSUM62\nmatrix for protein\
    \ sequences, and the\nEDNAFULL matrix for nucleotide sequences.\n(Floating point\
    \ number from 1.0 to 100.0)"
  type: boolean?
  inputBinding:
    prefix: -gapopen
- id: in_gap_extend
  doc: "float      [0.5 for any sequence] The gap extension,\npenalty is added to\
    \ the standard gap penalty\nfor each base or residue in the gap. This\nis how\
    \ long gaps are penalized. Usually you\nwill expect a few long gaps rather than\
    \ many\nshort gaps, so the gap extension penalty\nshould be lower than the gap\
    \ penalty. An\nexception is where one or both sequences are\nsingle reads with\
    \ possible sequencing\nerrors in which case you would expect many\nsingle base\
    \ gaps. You can get this result by\nsetting the gap open penalty to zero (or\n\
    very low) and using the gap extension\npenalty to control gap scoring. (Floating\n\
    point number from 0.0 to 10.0)"
  type: boolean?
  inputBinding:
    prefix: -gapextend
- id: in_data_file
  doc: "matrixf    [EBLOSUM62 for protein, EDNAFULL for DNA]\nThis is the scoring\
    \ matrix file used when\ncomparing sequences. By default it is the\nfile 'EBLOSUM62'\
    \ (for proteins) or the file\n'EDNAFULL' (for nucleic sequences). These\nfiles\
    \ are found in the 'data' directory of\nthe EMBOSS installation."
  type: boolean?
  inputBinding:
    prefix: -datafile
- id: in_end_weight
  doc: boolean    [N] Apply end gap penalties.
  type: boolean?
  inputBinding:
    prefix: -endweight
- id: in_end_open
  doc: "float      [10.0 for any sequence] The end gap open\npenalty is the score\
    \ taken away when an end\ngap is created. The best value depends on\nthe choice\
    \ of comparison matrix. The default\nvalue assumes you are using the EBLOSUM62\n\
    matrix for protein sequences, and the\nEDNAFULL matrix for nucleotide sequences.\n\
    (Floating point number from 1.0 to 100.0)"
  type: boolean?
  inputBinding:
    prefix: -endopen
- id: in_end_extend
  doc: "float      [0.5 for any sequence] The end gap\nextension, penalty is added\
    \ to the end gap\npenalty for each base or residue in the end\ngap. (Floating\
    \ point number from 0.0 to\n10.0)"
  type: boolean?
  inputBinding:
    prefix: -endextend
- id: in_min_score
  doc: "float      [1.0 for any sequence] Minimum alignment\nscore to report an alignment.\
    \ (Floating\npoint number from -10.0 to 100.0)"
  type: boolean?
  inputBinding:
    prefix: -minscore
- id: in_errfile
  doc: outfile    [needleall.error] Error file to be written
  type: boolean?
  inputBinding:
    prefix: -errfile
- id: in_to
  doc: 'Advanced (Unprompted) qualifiers:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- needleall
