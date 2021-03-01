class: CommandLineTool
id: precheck.py.cwl
inputs:
- id: in_families
  doc: The output of make-families.awk.
  type: string?
  inputBinding:
    prefix: --families
- id: in_constant_length
  doc: "The minimum number of reads required in each single-\nstranded family. Default:\
    \ 3"
  type: long?
  inputBinding:
    prefix: --constant-length
- id: in_validate
  doc: "Check the id's of the reads to make sure the correct\nreads are mated into\
    \ pairs (the id's of mates must be\nidentical). Default: False."
  type: boolean?
  inputBinding:
    prefix: --validate
- id: in_no_check_ids
  doc: Don't check read ids.
  type: boolean?
  inputBinding:
    prefix: --no-check-ids
- id: in_reads_one_dot_fq
  doc: The first mates in the read pairs.
  type: long
  inputBinding:
    position: 0
- id: in_reads_two_dot_fq
  doc: The second mates in the read pairs.
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- precheck.py
