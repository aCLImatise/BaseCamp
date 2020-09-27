class: CommandLineTool
id: meme_chip.cwl
inputs:
- id: in_failing_directory_exists
  doc: '<dir>   : output to the specified directory, failing if the directory exists'
  type: Directory
  inputBinding:
    prefix: -o
- id: in_oc
  doc: '<dir>   : output to the specified directory, overwriting if the directory
    exists'
  type: Directory
  inputBinding:
    prefix: -oc
- id: in_db
  doc: "<path>  : target database for use by Tomtom and CentriMo; if not present,\n\
    Tomtom and CentriMo are not run"
  type: boolean
  inputBinding:
    prefix: -db
- id: in_neg
  doc: "<path>  : negative (control) sequence file name;\nthe control sequences will\
    \ be input to MEME, CentriMo and DREME,\nand MEME will use the Differential Enrichment\
    \ objective function;\nsequences are assumed to originate from the same alphabet\
    \ as the\nprimary sequence file and should be the same length as those;\ndefault:\
    \ no negative sequences are used for MEME\nor CentriMo, and for DREME, the primary\
    \ sequences\nare shuffled to create the negative set"
  type: boolean
  inputBinding:
    prefix: -neg
- id: in_psp_gen
  doc: "use the psp-gen program to create a position-specific\nprior for use by MEME\
    \ with its Classic objective function;\nrequires -neg;  default: input control\
    \ sequences directly\nto MEME and use its Differential Enrichment objective function"
  type: boolean
  inputBinding:
    prefix: -psp-gen
- id: in_set_alphabet_dna
  doc: set the alphabet to DNA; this is the default
  type: boolean
  inputBinding:
    prefix: -dna
- id: in_rna
  doc: set the alphabet to RNA
  type: boolean
  inputBinding:
    prefix: -rna
- id: in_order
  doc: "<ord>   : set the order of the Markov background model\nthat is generated\
    \ from the sequences when a\nbackground file is not given; default: 1"
  type: boolean
  inputBinding:
    prefix: -order
- id: in_seed
  doc: "<seed>  : seed for the randomized selection of sequences\nfor MEME and the\
    \ shuffling of sequences for DREME;\ndefault: seed randomly"
  type: boolean
  inputBinding:
    prefix: -seed
- id: in_c_cut
  doc: "<num>   : maximum size of a sequence before it is cut down\nto a centered\
    \ section; a value of 0 indicates the\nsequences should not be cut down; default:\
    \ 100"
  type: boolean
  inputBinding:
    prefix: -ccut
- id: in_group_thresh
  doc: '<gthr>  : primary threshold for clustering motifs; default: 0.05'
  type: boolean
  inputBinding:
    prefix: -group-thresh
- id: in_group_weak
  doc: '<gwk>   : secondary threshold for clustering motifs; default: 2*gthr'
  type: boolean
  inputBinding:
    prefix: -group-weak
- id: in_filter_thresh
  doc: '<fthr>  : E-value threshold for including motifs; default: 0.05'
  type: boolean
  inputBinding:
    prefix: -filter-thresh
- id: in_time
  doc: "<minutes>  : maximum time that this program has to run and\ncreate output\
    \ in; default: no limit"
  type: boolean
  inputBinding:
    prefix: -time
- id: in_desc
  doc: '<text>  : description of the job'
  type: boolean
  inputBinding:
    prefix: -desc
- id: in_f_desc
  doc: '<file>  : file containing plain text description of the job'
  type: boolean
  inputBinding:
    prefix: -fdesc
- id: in_norc
  doc: ': search given strand only'
  type: boolean
  inputBinding:
    prefix: -norc
- id: in_old_clustering
  doc: ": pick cluster seed motifs based only on significance;\ndefault: preferentially\
    \ select discovered motifs as\nclustering seeds even if there is a library motif\n\
    that appears more enriched"
  type: boolean
  inputBinding:
    prefix: -old-clustering
- id: in_noecho
  doc: ": don't echo the commands run"
  type: boolean
  inputBinding:
    prefix: -noecho
- id: in_version
  doc: ': print the version and exit'
  type: boolean
  inputBinding:
    prefix: -version
- id: in_meme_brief
  doc: "<num>   : reduce size of MEME output files if more than <num>\n: primary sequences"
  type: boolean
  inputBinding:
    prefix: -meme-brief
- id: in_meme_mod
  doc: '[oops|zoops|anr]: sites used in a single sequence'
  type: boolean
  inputBinding:
    prefix: -meme-mod
- id: in_meme_min_w
  doc: '<num>   : minimum motif width'
  type: boolean
  inputBinding:
    prefix: -meme-minw
- id: in_meme_max_w
  doc: '<num>   : maximum motif width'
  type: boolean
  inputBinding:
    prefix: -meme-maxw
- id: in_meme_n_motifs
  doc: '<num>   : maximum number of motifs to find'
  type: boolean
  inputBinding:
    prefix: -meme-nmotifs
- id: in_meme_min_sites
  doc: '<num>   : minimum number of sites per motif'
  type: boolean
  inputBinding:
    prefix: -meme-minsites
- id: in_meme_max_sites
  doc: '<num>   : maximum number of sites per motif'
  type: boolean
  inputBinding:
    prefix: -meme-maxsites
- id: in_meme_p
  doc: '<np>    : use parallel version with <np> processors'
  type: boolean
  inputBinding:
    prefix: -meme-p
- id: in_meme_pal
  doc: ': look for palindromes only'
  type: boolean
  inputBinding:
    prefix: -meme-pal
- id: in_meme_search_size
  doc: "<num>   : the maximum portion of the primary sequences (in characters)\n:\
    \ used for motif search; MEME's running time increases as\n: roughly the square\
    \ of <num>"
  type: boolean
  inputBinding:
    prefix: -meme-searchsize
- id: in_meme_nr_and
  doc: ': MEME should not randomize sequence order'
  type: boolean
  inputBinding:
    prefix: -meme-nrand
- id: in_dre_me_e
  doc: '<num>   : stop searching after reaching this E-value threshold'
  type: boolean
  inputBinding:
    prefix: -dreme-e
- id: in_dre_me_m
  doc: '<num>   : stop searching after finding this many motifs'
  type: boolean
  inputBinding:
    prefix: -dreme-m
- id: in_centri_mo_local
  doc: ': compute enrichment of all regions (not only central)'
  type: boolean
  inputBinding:
    prefix: -centrimo-local
- id: in_centri_mo_score
  doc: '<num>   : set the minimum allowed match score'
  type: boolean
  inputBinding:
    prefix: -centrimo-score
- id: in_centri_mo_max_reg
  doc: '<num>   : set the maximum region size to be considered'
  type: boolean
  inputBinding:
    prefix: -centrimo-maxreg
- id: in_centri_mo_e_thresh
  doc: ': set the E-value threshold for reporting'
  type: long
  inputBinding:
    prefix: -centrimo-ethresh
- id: in_centri_mo_no_seq
  doc: ": don't store sequence IDs in the output"
  type: boolean
  inputBinding:
    prefix: -centrimo-noseq
- id: in_centri_mo_flip
  doc: ': reflect matches on reverse strand around center'
  type: boolean
  inputBinding:
    prefix: -centrimo-flip
- id: in_spam_o_skip
  doc: ": don't run SpaMo"
  type: boolean
  inputBinding:
    prefix: -spamo-skip
- id: in_fimo_skip
  doc: ": don't run FIMO"
  type: boolean
  inputBinding:
    prefix: -fimo-skip
- id: in_bfile_path_background
  doc: '-bfile            <path>  : background file'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_failing_directory_exists
  doc: '<dir>   : output to the specified directory, failing if the directory exists'
  type: Directory
  outputBinding:
    glob: $(inputs.in_failing_directory_exists)
- id: out_oc
  doc: '<dir>   : output to the specified directory, overwriting if the directory
    exists'
  type: Directory
  outputBinding:
    glob: $(inputs.in_oc)
cwlVersion: v1.1
baseCommand:
- meme-chip
