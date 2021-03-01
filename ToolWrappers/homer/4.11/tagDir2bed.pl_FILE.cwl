class: CommandLineTool
id: tagDir2bed.pl_FILE.cwl
inputs:
- id: in_len
  doc: '<#> (read length to report, default: given sizes in tags.tsv file)'
  type: boolean?
  inputBinding:
    prefix: -len
- id: in_separate
  doc: (report separate BED reads if there are multiple reads per position)
  type: boolean?
  inputBinding:
    prefix: -separate
- id: in_tag_dir_two_bed_do_tpl
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_tag_directory
  doc: ''
  type: Directory
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tagDir2bed.pl
- FILE
