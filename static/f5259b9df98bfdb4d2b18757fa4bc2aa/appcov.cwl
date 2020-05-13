class: CommandLineTool
id: appcov.cwl
inputs:
- id: apparent
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: co_variations
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: msa_file
  doc: ''
  type: string
  inputBinding:
    position: 2
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
- id: plot_wc
  doc: ': plot all possible wc+G:U basepairs'
  type: boolean
  inputBinding:
    prefix: --plotwc
- id: helix
  doc: ': find helices'
  type: boolean
  inputBinding:
    prefix: --helix
- id: app_gap
  doc: ': max fraction of gaps per column  [0.1]  (0<=x<=1)'
  type: string
  inputBinding:
    prefix: --appgap
- id: app_var
  doc: ': minimum fraction of changes per column required  [0.01]  (0<=x<=1)'
  type: string
  inputBinding:
    prefix: --appvar
- id: a_ppv_art
  doc: ': minimum fraction of changes per pair required  [0.01]  (0<=x<=1)'
  type: string
  inputBinding:
    prefix: --appvart
- id: app_now_c
  doc: ': max fraction of non-WC allowed  [0.01]  (0<=x<=1)'
  type: string
  inputBinding:
    prefix: --appnowc
- id: app_gu
  doc: ": fraction of GU's allowed [default: allows all]  [1.0]  (0<=x<=1)"
  type: string
  inputBinding:
    prefix: --appgu
- id: app_not_s
  doc: ': fraction of not transitions to still call a pair ts [default: allows non]  [0.0]  (0<=x<=1)'
  type: string
  inputBinding:
    prefix: --appnots
- id: min_helix
  doc: ': min lenght of a helix [default: 4]  [3]  (n>0)'
  type: string
  inputBinding:
    prefix: --minhelix
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
- id: p
  doc: ': produce plots'
  type: boolean
  inputBinding:
    prefix: -p
- id: out_pair
  doc: ': write pairs to <f> (default is standar output)'
  type: string
  inputBinding:
    prefix: --outpair
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
- appcov
