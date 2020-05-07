class: CommandLineTool
id: easel_filter.cwl
inputs:
- id: o
  doc: ': send filtered output MSAs to file <f>, not stdout'
  type: string
  inputBinding:
    prefix: -o
- id: in_format
  doc: ': specify the input MSA file is in format <s>'
  type: string
  inputBinding:
    prefix: --informat
- id: out_format
  doc: ': write the filtered output MSA in format <s>'
  type: string
  inputBinding:
    prefix: --outformat
- id: dna
  doc: ": specify that input MSA is DNA (don't autodetect)"
  type: boolean
  inputBinding:
    prefix: --dna
- id: rna
  doc: ':  ... that input MSA is RNA'
  type: boolean
  inputBinding:
    prefix: --rna
- id: amino
  doc: ':  ... that input MSA is protein'
  type: boolean
  inputBinding:
    prefix: --amino
- id: ignore_rf
  doc: ': ignore any RF line; always determine our own consensus'
  type: boolean
  inputBinding:
    prefix: --ignore-rf
- id: frag_thresh
  doc: ': seq is fragment if aspan/alen < fragthresh  [0.5]'
  type: string
  inputBinding:
    prefix: --fragthresh
- id: sym_frac
  doc: ': col is consensus if nres/(nres+ngap) >= symfrac  [0.5]'
  type: string
  inputBinding:
    prefix: --symfrac
- id: no_sampling
  doc: ': never use subsampling to determine consensus'
  type: boolean
  inputBinding:
    prefix: --no-sampling
- id: ns_amp
  doc: ': number of seqs to sample (if using sampling)  [10000]'
  type: string
  inputBinding:
    prefix: --nsamp
- id: samp_thresh
  doc: ': switch to using sampling when nseq > nsamp  [50000]'
  type: string
  inputBinding:
    prefix: --sampthresh
- id: max_frag
  doc: ": if sample has > maxfrag fragments, don't use sample  [5000]"
  type: string
  inputBinding:
    prefix: --maxfrag
- id: s
  doc: ': set random number seed to <n>  [42]'
  type: string
  inputBinding:
    prefix: -s
- id: cons_cover
  doc: ': keep seq whose alispan has better consensus coverage  [default]'
  type: boolean
  inputBinding:
    prefix: --conscover
- id: rand_order
  doc: ':  ... or with random preference'
  type: boolean
  inputBinding:
    prefix: --randorder
- id: orig_order
  doc: ':  ... or prefer seq that comes first in order'
  type: boolean
  inputBinding:
    prefix: --origorder
outputs: []
cwlVersion: v1.1
baseCommand:
- easel
- filter
