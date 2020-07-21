class: CommandLineTool
id: ../../../spades_gmapper.cwl
inputs:
- id: kmer_length_use
  doc: k-mer length to use
  type: string
  inputBinding:
    prefix: -k
- id: _threads_use
  doc: '# of threads to use'
  type: string
  inputBinding:
    prefix: -t
- id: tmp_dir
  doc: scratch directory to use
  type: string
  inputBinding:
    prefix: --tmp-dir
outputs: []
cwlVersion: v1.1
baseCommand:
- spades-gmapper
