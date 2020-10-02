class: CommandLineTool
id: popera.cwl
inputs:
- id: in_data
  doc: data file, should be sorted bam format
  type: File
  inputBinding:
    prefix: --data
- id: in_name
  doc: NH sample name default=NH_sample
  type: string
  inputBinding:
    prefix: --name
- id: in_bandwidth
  doc: kernel smooth band width, should >1, default=200
  type: long
  inputBinding:
    prefix: --bandwidth
- id: in_threshold
  doc: Hot spots threshold, default=4.0
  type: double
  inputBinding:
    prefix: --threshold
- id: in_minlength
  doc: minimum length of hot spots, default=5
  type: long
  inputBinding:
    prefix: --minlength
- id: in_threads
  doc: threads number or cpu number, default=4
  type: long
  inputBinding:
    prefix: --threads
- id: in_bigwig
  doc: whether out put bigwig file, default=False
  type: File
  inputBinding:
    prefix: --bigwig
- id: in_exclude_chr
  doc: "Don't count those DHs, example='-x ChrM,ChrC'\n"
  type: string
  inputBinding:
    prefix: --excludechr
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_bigwig
  doc: whether out put bigwig file, default=False
  type: File
  outputBinding:
    glob: $(inputs.in_bigwig)
cwlVersion: v1.1
baseCommand:
- popera
