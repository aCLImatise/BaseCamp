class: CommandLineTool
id: kmergenie.cwl
inputs:
- id: read_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: diploid
  doc: 'use the diploid model (default: haploid model)'
  type: boolean
  inputBinding:
    prefix: --diploid
- id: one_pass
  doc: 'skip the second pass to estimate k at 2 bp resolution (default: two passes)'
  type: boolean
  inputBinding:
    prefix: --one-pass
- id: k
  doc: 'largest k-mer size to consider (default: 121)'
  type: string
  inputBinding:
    prefix: -k
- id: l
  doc: 'smallest k-mer size to consider (default: 15)'
  type: string
  inputBinding:
    prefix: -l
- id: s
  doc: 'interval between consecutive kmer sizes (default: 10)'
  type: string
  inputBinding:
    prefix: -s
- id: e
  doc: 'k-mer sampling value (default: auto-detected to use ~200 MB memory/thread)'
  type: string
  inputBinding:
    prefix: -e
- id: t
  doc: 'number of threads (default: number of cores minus one)'
  type: string
  inputBinding:
    prefix: -t
- id: o
  doc: 'prefix of the output files (default: histograms)'
  type: string
  inputBinding:
    prefix: -o
- id: debug
  doc: developer output of R scripts
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- kmergenie
