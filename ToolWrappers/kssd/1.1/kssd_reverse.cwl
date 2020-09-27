class: CommandLineTool
id: kssd_reverse.cwl
inputs:
- id: in_by_reads
  doc: recover k-mer from sketched reads .
  type: boolean
  inputBinding:
    prefix: --byreads
- id: in_s_huf_file
  doc: provide .shuf file.
  type: File
  inputBinding:
    prefix: --shufFile
- id: in_outdir
  doc: path for recovered k-mer files.
  type: File
  inputBinding:
    prefix: --outdir
- id: in_threads
  doc: threads num.
  type: long
  inputBinding:
    prefix: --threads
- id: in_option_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_co_dir
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- kssd
- reverse
