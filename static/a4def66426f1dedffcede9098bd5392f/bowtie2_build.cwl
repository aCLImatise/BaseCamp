class: CommandLineTool
id: bowtie2_build.cwl
inputs:
- id: reference_in
  doc: comma-separated list of files with ref sequences
  type: string
  inputBinding:
    position: 0
- id: bt2_index_base
  doc: write bt2 data to files with this dir/basename
  type: string
  inputBinding:
    position: 1
- id: o
  doc: '/--offrate <int>      SA is sampled every 2^<int> BWT chars (default: 5)'
  type: boolean
  inputBinding:
    prefix: -o
- id: t
  doc: '/--ftabchars <int>    # of chars consumed in initial lookup (default: 10)'
  type: boolean
  inputBinding:
    prefix: -t
- id: threads
  doc: '# of threads'
  type: long
  inputBinding:
    prefix: --threads
- id: seed
  doc: seed for random number generator
  type: long
  inputBinding:
    prefix: --seed
- id: q
  doc: /--quiet              verbose output (for debugging)
  type: boolean
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- bowtie2-build
