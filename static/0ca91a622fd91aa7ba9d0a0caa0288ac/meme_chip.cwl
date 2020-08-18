class: CommandLineTool
id: ../../../meme_chip.cwl
inputs:
- id: b_file
  doc: '<path>  : background file'
  type: boolean
  inputBinding:
    prefix: -bfile
- id: order
  doc: '<ord>   : set the order of the Markov background model that is generated from
    the sequences when a background file is not given; default: 1'
  type: boolean
  inputBinding:
    prefix: -order
- id: seed
  doc: '<seed>  : seed for the randomized selection of sequences for MEME and the
    shuffling of sequences for DREME; default: seed randomly'
  type: boolean
  inputBinding:
    prefix: -seed
- id: c_cut
  doc: '<num>   : maximum size of a sequence before it is cut down  to a centered
    section; a value of 0 indicates the sequences should not be cut down; default:
    100'
  type: boolean
  inputBinding:
    prefix: -ccut
- id: group_thresh
  doc: '<gthr>  : primary threshold for clustering motifs; default: 0.05'
  type: boolean
  inputBinding:
    prefix: -group-thresh
- id: group_weak
  doc: '<gwk>   : secondary threshold for clustering motifs; default: 2*gthr'
  type: boolean
  inputBinding:
    prefix: -group-weak
- id: filter_thresh
  doc: '<fthr>  : E-value threshold for including motifs; default: 0.05'
  type: boolean
  inputBinding:
    prefix: -filter-thresh
- id: time
  doc: '<minutes>  : maximum time that this program has to run and  create output
    in; default: no limit'
  type: boolean
  inputBinding:
    prefix: -time
- id: desc
  doc: '<text>  : description of the job'
  type: boolean
  inputBinding:
    prefix: -desc
- id: f_desc
  doc: '<file>  : file containing plain text description of the job'
  type: boolean
  inputBinding:
    prefix: -fdesc
- id: norc
  doc: ': search given strand only'
  type: boolean
  inputBinding:
    prefix: -norc
- id: old_clustering
  doc: ': pick cluster seed motifs based only on significance; default: preferentially
    select discovered motifs as clustering seeds even if there is a library motif
    that appears more enriched'
  type: boolean
  inputBinding:
    prefix: -old-clustering
- id: noecho
  doc: ": don't echo the commands run"
  type: boolean
  inputBinding:
    prefix: -noecho
- id: version
  doc: ': print the version and exit'
  type: boolean
  inputBinding:
    prefix: -version
- id: meme_brief
  doc: '<num>   : reduce size of MEME output files if more than <num>  : primary sequences'
  type: boolean
  inputBinding:
    prefix: -meme-brief
- id: meme_mod
  doc: '[oops|zoops|anr]: sites used in a single sequence'
  type: boolean
  inputBinding:
    prefix: -meme-mod
- id: meme_min_w
  doc: '<num>   : minimum motif width'
  type: boolean
  inputBinding:
    prefix: -meme-minw
- id: meme_max_w
  doc: '<num>   : maximum motif width'
  type: boolean
  inputBinding:
    prefix: -meme-maxw
- id: meme_n_motifs
  doc: '<num>   : maximum number of motifs to find'
  type: boolean
  inputBinding:
    prefix: -meme-nmotifs
- id: meme_min_sites
  doc: '<num>   : minimum number of sites per motif'
  type: boolean
  inputBinding:
    prefix: -meme-minsites
- id: meme_max_sites
  doc: '<num>   : maximum number of sites per motif'
  type: boolean
  inputBinding:
    prefix: -meme-maxsites
- id: meme_p
  doc: '<np>    : use parallel version with <np> processors'
  type: boolean
  inputBinding:
    prefix: -meme-p
- id: meme_pal
  doc: ': look for palindromes only'
  type: boolean
  inputBinding:
    prefix: -meme-pal
- id: meme_search_size
  doc: "<num>   : the maximum portion of the primary sequences (in characters) : used\
    \ for motif search; MEME's running time increases as  : roughly the square of\
    \ <num>"
  type: boolean
  inputBinding:
    prefix: -meme-searchsize
- id: meme_nr_and
  doc: ': MEME should not randomize sequence order'
  type: boolean
  inputBinding:
    prefix: -meme-nrand
- id: dre_me_e
  doc: '<num>   : stop searching after reaching this E-value threshold'
  type: boolean
  inputBinding:
    prefix: -dreme-e
- id: dre_me_m
  doc: '<num>   : stop searching after finding this many motifs'
  type: boolean
  inputBinding:
    prefix: -dreme-m
- id: centri_mo_local
  doc: ': compute enrichment of all regions (not only central)'
  type: boolean
  inputBinding:
    prefix: -centrimo-local
- id: centri_mo_score
  doc: '<num>   : set the minimum allowed match score'
  type: boolean
  inputBinding:
    prefix: -centrimo-score
- id: centri_mo_max_reg
  doc: '<num>   : set the maximum region size to be considered'
  type: boolean
  inputBinding:
    prefix: -centrimo-maxreg
- id: centri_mo_e_thresh
  doc: ': set the E-value threshold for reporting'
  type: string
  inputBinding:
    prefix: -centrimo-ethresh
- id: centri_mo_no_seq
  doc: ": don't store sequence IDs in the output"
  type: boolean
  inputBinding:
    prefix: -centrimo-noseq
- id: centri_mo_flip
  doc: ': reflect matches on reverse strand around center'
  type: boolean
  inputBinding:
    prefix: -centrimo-flip
- id: spam_o_skip
  doc: ": don't run SpaMo"
  type: boolean
  inputBinding:
    prefix: -spamo-skip
- id: fimo_skip
  doc: ": don't run FIMO"
  type: boolean
  inputBinding:
    prefix: -fimo-skip
- id: db
  doc: ''
  type: string
  inputBinding:
    prefix: -db
outputs: []
cwlVersion: v1.1
baseCommand:
- meme-chip
