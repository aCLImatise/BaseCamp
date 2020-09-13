class: CommandLineTool
id: ../../../easel_filter.cwl
inputs:
- id: in_send_filtered_msas
  doc: ': send filtered output MSAs to file <f>, not stdout'
  type: File
  inputBinding:
    prefix: -o
- id: in_in_format
  doc: ': specify the input MSA file is in format <s>'
  type: File
  inputBinding:
    prefix: --informat
- id: in_out_format
  doc: ': write the filtered output MSA in format <s>'
  type: string
  inputBinding:
    prefix: --outformat
- id: in_dna
  doc: ": specify that input MSA is DNA (don't autodetect)"
  type: boolean
  inputBinding:
    prefix: --dna
- id: in_rna
  doc: ':  ... that input MSA is RNA'
  type: boolean
  inputBinding:
    prefix: --rna
- id: in_amino
  doc: ':  ... that input MSA is protein'
  type: boolean
  inputBinding:
    prefix: --amino
- id: in_ignore_rf
  doc: ': ignore any RF line; always determine our own consensus'
  type: boolean
  inputBinding:
    prefix: --ignore-rf
- id: in_frag_thresh
  doc: ': seq is fragment if aspan/alen < fragthresh  [0.5]'
  type: double
  inputBinding:
    prefix: --fragthresh
- id: in_sym_frac
  doc: ': col is consensus if nres/(nres+ngap) >= symfrac  [0.5]'
  type: double
  inputBinding:
    prefix: --symfrac
- id: in_no_sampling
  doc: ': never use subsampling to determine consensus'
  type: boolean
  inputBinding:
    prefix: --no-sampling
- id: in_ns_amp
  doc: ': number of seqs to sample (if using sampling)  [10000]'
  type: long
  inputBinding:
    prefix: --nsamp
- id: in_samp_thresh
  doc: ': switch to using sampling when nseq > nsamp  [50000]'
  type: long
  inputBinding:
    prefix: --sampthresh
- id: in_max_frag
  doc: ": if sample has > maxfrag fragments, don't use sample  [5000]"
  type: long
  inputBinding:
    prefix: --maxfrag
- id: in_set_random_seed
  doc: ': set random number seed to <n>  [42]'
  type: long
  inputBinding:
    prefix: -s
- id: in_cons_cover
  doc: ': keep seq whose alispan has better consensus coverage  [default]'
  type: boolean
  inputBinding:
    prefix: --conscover
- id: in_rand_order
  doc: ':  ... or with random preference'
  type: boolean
  inputBinding:
    prefix: --randorder
- id: in_orig_order
  doc: ':  ... or prefer seq that comes first in order'
  type: boolean
  inputBinding:
    prefix: --origorder
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_send_filtered_msas
  doc: ': send filtered output MSAs to file <f>, not stdout'
  type: File
  outputBinding:
    glob: $(inputs.in_send_filtered_msas)
cwlVersion: v1.1
baseCommand:
- easel
- filter
