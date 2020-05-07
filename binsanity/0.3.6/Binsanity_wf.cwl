class: CommandLineTool
id: Binsanity_wf.cwl
inputs:
- id: c
  doc: Specify a Transformed Coverage File e.g Log transformed
  type: string
  inputBinding:
    prefix: -c
- id: f
  doc: Specify directory containing your contigs
  type: string
  inputBinding:
    prefix: -f
- id: p
  doc: 'Specify a preference [Default: -3] Note: decreasing the preference leads to
    more lumping, increasing will lead to more splitting. If your range of coverages
    are low you will want to decrease the preference, if you have 10 or less replicates
    increasing the preference could benefit you.'
  type: string
  inputBinding:
    prefix: -p
- id: m
  doc: 'Specify a max number of iterations [Default: 4000]'
  type: long
  inputBinding:
    prefix: -m
- id: v
  doc: 'Specify the convergence iteration number [Default: 400] e.g Number of iterations
    with no change in the number of estimated clusters that stops the convergence.'
  type: string
  inputBinding:
    prefix: -v
- id: d
  doc: 'Specify a damping factor between 0.5 and 1, [Default: 0.95]'
  type: string
  inputBinding:
    prefix: -d
- id: l
  doc: Specify the fasta file containing contigs you want to cluster
  type: string
  inputBinding:
    prefix: -l
- id: x
  doc: 'Specify the contig size cut-off [Default: 1000 bp]'
  type: long
  inputBinding:
    prefix: -x
- id: o
  doc: "Give a name to the directory BinSanity results will be output in [Default:\
    \ 'BINSANITY-RESULTS']"
  type: string
  inputBinding:
    prefix: -o
- id: threads
  doc: Indicate how many threads you want dedicated to the subprocess CheckM. [Default=1]
  type: string
  inputBinding:
    prefix: --threads
- id: km_er
  doc: 'Indicate a number for the kmer calculation, the [Default: 4]'
  type: string
  inputBinding:
    prefix: --kmer
- id: prefix
  doc: Specify a prefix to append to the start of all files generated during Binsanity
  type: string
  inputBinding:
    prefix: --Prefix
- id: refine_preference
  doc: 'Specify a preference for refinement. [Default: -25]'
  type: string
  inputBinding:
    prefix: --refine-preference
- id: bin_prefix
  doc: Sepcify what prefix you want appended to final Bins {optional}
  type: string
  inputBinding:
    prefix: --binPrefix
outputs: []
cwlVersion: v1.1
baseCommand:
- Binsanity-wf
