class: CommandLineTool
id: nthll.cwl
inputs:
- id: in_threads
  doc: use N parallel threads [1] (N>=2 should be used when input files are >=2)
  type: long
  inputBinding:
    prefix: --threads
- id: in_km_er
  doc: the length of kmer [64]
  type: long
  inputBinding:
    prefix: --kmer
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nthll
