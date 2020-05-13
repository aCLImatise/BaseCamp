class: CommandLineTool
id: msafilter.cwl
inputs:
- id: msa_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: outdir
  doc: ': specify a directory for all output files'
  type: string
  inputBinding:
    prefix: --outdir
- id: v
  doc: ': be verbose'
  type: boolean
  inputBinding:
    prefix: -v
- id: window
  doc: ': window size  (n>0)'
  type: string
  inputBinding:
    prefix: --window
- id: slide
  doc: ': window slide  [50]  (n>0)'
  type: string
  inputBinding:
    prefix: --slide
- id: one_msa
  doc: ': if file has more than one msa, analyze only the first one'
  type: boolean
  inputBinding:
    prefix: --onemsa
- id: f
  doc: ': filter out seqs <x*seq_cons residues  (0<x<=1.0)'
  type: string
  inputBinding:
    prefix: -F
- id: i
  doc: ': require seqs to have < <x> id  [1.0]  (0<x<=1.0)'
  type: string
  inputBinding:
    prefix: -I
- id: i
  doc: ': require seqs to have >= <x> id  (0<=x<1.0)'
  type: string
  inputBinding:
    prefix: -i
- id: t_start
  doc: ': min alignment position to analyze [1..alen]  (n>0)'
  type: string
  inputBinding:
    prefix: --tstart
- id: tend
  doc: ': max alignment position to analyze [1..alen]  (n>0)'
  type: string
  inputBinding:
    prefix: --tend
- id: consensus
  doc: ': analyze only consensus (seq_cons) positions'
  type: boolean
  inputBinding:
    prefix: --consensus
- id: sub_msa
  doc: ': take n random sequences from the alignment, all if NULL  (n>0)'
  type: string
  inputBinding:
    prefix: --submsa
- id: n_seq_min
  doc: ': minimum number of sequences in the alignment  (n>0)'
  type: string
  inputBinding:
    prefix: --nseqmin
- id: gap_thresh
  doc: ': keep columns with < <x> fraction of gaps  [1.0]  (0<=x<=1)'
  type: string
  inputBinding:
    prefix: --gapthresh
- id: mini_d
  doc: ': minimum avgid of the given alignment  (0<x<=1.0)'
  type: string
  inputBinding:
    prefix: --minid
- id: max_id
  doc: ': maximum avgid of the given alignment  (0<x<=1.0)'
  type: string
  inputBinding:
    prefix: --maxid
- id: in_format
  doc: ': specify format'
  type: string
  inputBinding:
    prefix: --informat
- id: out_msa
  doc: ': write msa used to file <f>,'
  type: string
  inputBinding:
    prefix: --outmsa
- id: out_map
  doc: ': write map file to <f>'
  type: string
  inputBinding:
    prefix: --outmap
- id: seed
  doc: ': set RNG seed to <n>. Use 0 for a random seed.  [42]  (n>=0)'
  type: string
  inputBinding:
    prefix: --seed
outputs: []
cwlVersion: v1.1
baseCommand:
- msafilter
