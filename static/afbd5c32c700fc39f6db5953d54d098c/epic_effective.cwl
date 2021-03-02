class: CommandLineTool
id: epic_effective.cwl
inputs:
- id: in_read_length
  doc: length of reads
  type: long?
  inputBinding:
    prefix: --read-length
- id: in_nb_cpu
  doc: 'number of cores to use [default: 1]'
  type: long?
  inputBinding:
    prefix: --nb-cpu
- id: in_tmpdir
  doc: temporary directory. Default is to use $TMPDIR if set, otherwise /tmp.
  type: Directory?
  inputBinding:
    prefix: --tmpdir
- id: in_file
  doc: Fasta genome
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- epic-effective
