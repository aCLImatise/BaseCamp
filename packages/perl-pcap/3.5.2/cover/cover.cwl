class: CommandLineTool
id: cover.cwl
inputs:
- id: in_info
  doc: '- show documentation'
  type: boolean?
  inputBinding:
    prefix: -info
- id: in_version
  doc: '- show version'
  type: boolean?
  inputBinding:
    prefix: -version
- id: in_silent
  doc: "- don't print informational messages (default off)"
  type: boolean?
  inputBinding:
    prefix: -silent
- id: in_summary
  doc: '- give summary report                (default on)'
  type: boolean?
  inputBinding:
    prefix: -summary
- id: in_report
  doc: '- report format                      (default html)'
  type: string?
  inputBinding:
    prefix: -report
- id: in_output_dir
  doc: '- directory for output               (default given db)'
  type: Directory?
  inputBinding:
    prefix: -outputdir
- id: in_launch
  doc: '- launch report in viewer (if avail) (default off)'
  type: boolean?
  inputBinding:
    prefix: -launch
- id: in_select
  doc: '- only report on the file            (default all)'
  type: File?
  inputBinding:
    prefix: -select
- id: in_ignore
  doc: "- don't report on the file           (default none)"
  type: File?
  inputBinding:
    prefix: -ignore
- id: in_select_re
  doc: '- append to REs of files to select   (default none)'
  type: string?
  inputBinding:
    prefix: -select_re
- id: in_ignore_re
  doc: '- append to REs of files to ignore   (default none)'
  type: string?
  inputBinding:
    prefix: -ignore_re
- id: in_write
  doc: '[db]           - write the merged database          (default off)'
  type: boolean?
  inputBinding:
    prefix: -write
- id: in_delete
  doc: '- drop database(s)                   (default off)'
  type: boolean?
  inputBinding:
    prefix: -delete
- id: in_dump_db
  doc: '- dump database(s) (for debugging)   (default off)'
  type: boolean?
  inputBinding:
    prefix: -dump_db
- id: in_coverage
  doc: '- report on criterion  (default all available)'
  type: string?
  inputBinding:
    prefix: -coverage
- id: in_test
  doc: '- drop database(s) and run make test (default off)'
  type: boolean?
  inputBinding:
    prefix: -test
- id: in_gcov
  doc: '- run gcov to cover XS code     (default on if using gcc)'
  type: boolean?
  inputBinding:
    prefix: -gcov
- id: in_make
  doc: "- use the given 'make' program for 'make test'"
  type: string?
  inputBinding:
    prefix: -make
- id: in_prefer_lib
  doc: '- prefer files in lib                (default off)'
  type: boolean?
  inputBinding:
    prefix: -prefer_lib
- id: in_add_uncover_able_point
  doc: string
  type: boolean?
  inputBinding:
    prefix: -add_uncoverable_point
- id: in_delete_uncover_able_point
  doc: file
  type: File?
  inputBinding:
    prefix: -delete_uncoverable_point
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: '- directory for output               (default given db)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- cover
