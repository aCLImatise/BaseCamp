class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sequnwinder.cwl
inputs:
- id: out
  doc: ': Ouput file prefix. All output will be put into a directory with the prefix
    name'
  type: string
  inputBinding:
    prefix: --out
- id: threads
  doc: ': Use n threads to train SeqUnwinder model. Default is 5 threads'
  type: string
  inputBinding:
    prefix: --threads
- id: debug
  doc: ': Flag to run in debug mode; prints extra output'
  type: boolean
  inputBinding:
    prefix: --debug
- id: meme_path
  doc: ': path to the meme bin dir (default: meme is in $PATH)'
  type: File
  inputBinding:
    prefix: --memepath
- id: seq
  doc: ': A directory containing fasta format files corresponding to every named chromosome
    is required'
  type: File
  inputBinding:
    prefix: --seq
- id: gen_seqs
  doc: '<DNA sequences around at TF binding sites; eg: ATGC...TGC     Shared;Proximal>'
  type: boolean
  inputBinding:
    prefix: --genseqs
- id: win
  doc: ': Size of the genomic regions in bp. Default = 150.'
  type: long
  inputBinding:
    prefix: --win
- id: maker_and_regs
  doc: ': Flag to make random genomic regions as an extra outgroup class in classification
    (Only applicable when genome is provide.) '
  type: boolean
  inputBinding:
    prefix: --makerandregs
- id: mink
  doc: ': Minimum length of k-mer (default = 4)'
  type: long
  inputBinding:
    prefix: --mink
- id: max_k
  doc: ': Maximum length of k-mer (default = 5)'
  type: long
  inputBinding:
    prefix: --maxk
- id: regularization_constant_default
  doc: ': Regularization constant (default = 10)'
  type: string
  inputBinding:
    prefix: --r
- id: number_folds_cross
  doc: ': Number of folds for cross validation, default = 3.'
  type: long
  inputBinding:
    prefix: --x
- id: merge_low
  doc: ': Flag to merge subclasses with less than 200 sites with other relevant classes.
    By default, all subclasses with less that 200 sites are removed. '
  type: boolean
  inputBinding:
    prefix: --mergelow
- id: mins_can_len
  doc: ': Minimum length of the window to scan K-mer models. Default=8.'
  type: string
  inputBinding:
    prefix: --minscanlen
- id: max_scan_len
  doc: ': Maximum length of the window to scan K-mer models. Default=14.'
  type: string
  inputBinding:
    prefix: --maxscanlen
- id: hills_thresh
  doc: ': Scoring threshold to identify hills. Default=0.1.'
  type: string
  inputBinding:
    prefix: --hillsthresh
- id: meme_min_w
  doc: ': minw arg for MEME. Default=6.'
  type: string
  inputBinding:
    prefix: --mememinw
- id: meme_max_w
  doc: ': maxw arg for MEME. Default=13. This value should always be less than "maxscanlen".'
  type: string
  inputBinding:
    prefix: --mememaxw
- id: me_men_motifs
  doc: ': Number of motifs MEME should find in each condition (default=3)'
  type: long
  inputBinding:
    prefix: --memenmotifs
- id: meme_args
  doc: ': Additional args for MEME (default:  -dna -mod zoops -revcomp -nostatus)'
  type: string
  inputBinding:
    prefix: --memeargs
- id: meme_search_win
  doc: ': Window around hills to search for discriminative motifs. Default=16. (Only
    applicable when run with "genregs").'
  type: string
  inputBinding:
    prefix: --memesearchwin
- id: motif_min_roc
  doc: ': minimum class-specific ROC required to report motif. Default=0.7.        --a
    <int>: Maximum number of allowed ADMM iterations. Default=400.'
  type: string
  inputBinding:
    prefix: --motifminROC
outputs: []
cwlVersion: v1.1
baseCommand:
- sequnwinder
