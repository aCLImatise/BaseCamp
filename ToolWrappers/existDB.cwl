class: CommandLineTool
id: existDB.cwl
inputs:
- id: in_mer_size
  doc: -- Use the specified mersize when building existDB tables.
  type: long
  inputBinding:
    prefix: -mersize
- id: in_build
  doc: "prefix\n-- Build an existDB on all mers in some.fasta and save\nthe tables\
    \ into prefix."
  type: string
  inputBinding:
    prefix: -build
- id: in_describe
  doc: -- Reports the state of some existDB file.
  type: File
  inputBinding:
    prefix: -describe
- id: in_test_files
  doc: "prefix\n-- Build an existDB table from some.fasta.  Write that table to disk.\n\
    Load the table back.  Compare that each mer in some.fasta is present\nin all three\
    \ existDB tables created earlier."
  type: string
  inputBinding:
    prefix: -testfiles
- id: in_test_existence
  doc: "-- Build an existDB table from some.fasta, check that every\nmer in some.fasta\
    \ can be found in the table.  Does not\nguarantee that every mer in the table\
    \ is found in the file."
  type: File
  inputBinding:
    prefix: -testexistence
- id: in_test_exhaustive
  doc: "some.meryl\n-- Build an existDB table from some.fasta, check _EVERY_ mer\n\
    for existance.  Complain if a mer exists in the table but\nnot in the meryl database.\
    \  Assumes 'some.meryl' is the\nmercount of some.fasta.\n"
  type: string
  inputBinding:
    prefix: -testexhaustive
- id: in_stuff
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- existDB
