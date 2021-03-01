class: CommandLineTool
id: positionDB.cwl
inputs:
- id: in_mer_size
  doc: The size of the mers, default=20.
  type: long?
  inputBinding:
    prefix: -mersize
- id: in_mer_skip
  doc: The skip between mers, default=0
  type: long?
  inputBinding:
    prefix: -merskip
- id: in_use
  doc: ',c         Specify which sequences to use, default=all'
  type: string?
  inputBinding:
    prefix: -use
- id: in_mer_begin
  doc: 'Build on a subset of the mers, starting at mer #b, default=all mers'
  type: string?
  inputBinding:
    prefix: -merbegin
- id: in_mer_end
  doc: 'Build on a subset of the mers, ending at mer #e, default=all mers'
  type: string?
  inputBinding:
    prefix: -merend
- id: in_sequence
  doc: Input sequences.
  type: string?
  inputBinding:
    prefix: -sequence
- id: in_output
  doc: Output filename.
  type: File?
  inputBinding:
    prefix: -output
- id: in_build_only
  doc: "[build opts] sequence.fasta\n--  just builds a table and exits"
  type: boolean?
  inputBinding:
    prefix: -buildonly
- id: in_existence
  doc: "[build opts] sequence.fasta\n--  builds (or reads) a table reports if any\
    \ mers\nin sequence.fasta cannot be found"
  type: boolean?
  inputBinding:
    prefix: -existence
- id: in_extra
  doc: "[build opts] sequence.fasta\n--  builds (or reads) a table reports if any\
    \ mers\nNOT in sequence.fasta are be found"
  type: boolean?
  inputBinding:
    prefix: -extra
- id: in_test_one
  doc: "--  Tests if each and every mer is found in the\npositionDB.  Reports if it\
    \ doesn't find a mer\nat the correct position.  Doesn't report if table\nhas too\
    \ much stuff."
  type: long?
  inputBinding:
    prefix: -test1
- id: in_test_two
  doc: "sequence.fasta\n--  Builds a positionDB from db.fasta, then searches\nthe\
    \ table for each mer in sequence.fasta.  Reports\nall mers it finds.\n-- This\
    \ is a silly test and you shouldn't do it.\n"
  type: long?
  inputBinding:
    prefix: -test2
- id: in_args
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output filename.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- positionDB
