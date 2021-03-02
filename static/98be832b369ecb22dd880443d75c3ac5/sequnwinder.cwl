class: CommandLineTool
id: sequnwinder.cwl
inputs:
- id: in_out
  doc: ': Ouput file prefix. All output will be put into a directory with the prefix
    name'
  type: File?
  inputBinding:
    prefix: --out
- id: in_threads
  doc: ': Use n threads to train SeqUnwinder model. Default is 5 threads'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_debug
  doc: ': Flag to run in debug mode; prints extra output'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_meme_path
  doc: ': path to the meme bin dir (default: meme is in $PATH)'
  type: File?
  inputBinding:
    prefix: --memepath
- id: in_geninfo
  doc: This file should list the lengths of all chromosomes on separate lines using
    the format chrName<tab>chrLength
  type: File?
  inputBinding:
    prefix: --geninfo
- id: in_genre_gs
  doc: '<List of TF binding sites with annotations; eg: chr1:151736000  Shared;Proximal>'
  type: boolean?
  inputBinding:
    prefix: --genregs
- id: in_win
  doc: ': Size of the genomic regions in bp. Default = 150.'
  type: long?
  inputBinding:
    prefix: --win
- id: in_maker_and_regs
  doc: ': Flag to make random genomic regions as an extra outgroup class in classification
    (Only applicable when genome is provide.)'
  type: boolean?
  inputBinding:
    prefix: --makerandregs
- id: in_mink
  doc: ': Minimum length of k-mer (default = 4)'
  type: long?
  inputBinding:
    prefix: --mink
- id: in_max_k
  doc: ': Maximum length of k-mer (default = 5)'
  type: long?
  inputBinding:
    prefix: --maxk
- id: in_regularization_constant_default
  doc: ': Regularization constant (default = 10)'
  type: long?
  inputBinding:
    prefix: --r
- id: in_number_folds_cross
  doc: ': Number of folds for cross validation, default = 3.'
  type: long?
  inputBinding:
    prefix: --x
- id: in_merge_low
  doc: ': Flag to merge subclasses with less than 200 sites with other relevant classes.
    By default, all subclasses with less that 200 sites are removed.'
  type: boolean?
  inputBinding:
    prefix: --mergelow
- id: in_mins_can_len
  doc: ': Minimum length of the window to scan K-mer models. Default=8.'
  type: long?
  inputBinding:
    prefix: --minscanlen
- id: in_max_scan_len
  doc: ': Maximum length of the window to scan K-mer models. Default=14.'
  type: long?
  inputBinding:
    prefix: --maxscanlen
- id: in_hills_thresh
  doc: ': Scoring threshold to identify hills. Default=0.1.'
  type: double?
  inputBinding:
    prefix: --hillsthresh
- id: in_meme_min_w
  doc: ': minw arg for MEME. Default=6.'
  type: long?
  inputBinding:
    prefix: --mememinw
- id: in_meme_max_w
  doc: ': maxw arg for MEME. Default=13. This value should always be less than "maxscanlen".'
  type: long?
  inputBinding:
    prefix: --mememaxw
- id: in_me_men_motifs
  doc: ': Number of motifs MEME should find in each condition (default=3)'
  type: long?
  inputBinding:
    prefix: --memenmotifs
- id: in_meme_args
  doc: ': Additional args for MEME (default:  -dna -mod zoops -revcomp -nostatus)'
  type: string?
  inputBinding:
    prefix: --memeargs
- id: in_meme_search_win
  doc: ': Window around hills to search for discriminative motifs. Default=16. (Only
    applicable when run with "genregs").'
  type: long?
  inputBinding:
    prefix: --memesearchwin
- id: in_motif_min_roc
  doc: ': minimum class-specific ROC required to report motif. Default=0.7.        --a
    <int>: Maximum number of allowed ADMM iterations. Default=400.'
  type: long?
  inputBinding:
    prefix: --motifminROC
- id: in_and
  doc: '--seq <path>: A directory containing fasta format files corresponding to every
    named chromosome is required'
  type: string
  inputBinding:
    position: 0
- id: in_or
  doc: '--genseqs <DNA sequences around at TF binding sites; eg: ATGC...TGC     Shared;Proximal>'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: ': Ouput file prefix. All output will be put into a directory with the prefix
    name'
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- sequnwinder
