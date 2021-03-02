class: CommandLineTool
id: sequana_summary.cwl
inputs:
- id: in_multiple
  doc: "one filename (either FastQ or BED file; see\nDESCRIPTION)"
  type: File?
  inputBinding:
    prefix: --multiple
- id: in_glob
  doc: "a glob/pattern of files. Must use quotes e.g.\n\"*.fastq.gz\" (See --file\
    \ or DESCRIPTION for details)"
  type: File?
  inputBinding:
    prefix: --glob
- id: in_sample
  doc: "If input FastQ files, analyse entire file. You may\nrestrict analysis to set\
    \ of reads"
  type: File?
  inputBinding:
    prefix: --sample
- id: in_thread
  doc: "Several files may be processed in parallel. By default\n4 threads are used\n"
  type: long?
  inputBinding:
    prefix: --thread
- id: in_welcome
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_se_quan_a
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sequana_summary
