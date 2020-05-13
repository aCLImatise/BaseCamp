class: CommandLineTool
id: hhblits_omp.cwl
inputs:
- id: i
  doc: 'input/query: single sequence or multiple sequence alignment (MSA) in a3m,
    a2m, or FASTA format, or HMM in hhm format'
  type: File
  inputBinding:
    prefix: -i
- id: d
  doc: database name (e.g. uniprot20_29Feb2012)                         Multiple databases
    may be specified with '-d <db1> -d <db2> ...'
  type: string
  inputBinding:
    prefix: -d
- id: n
  doc: '[1,8]   number of iterations (default=2)                               '
  type: boolean
  inputBinding:
    prefix: -n
- id: e
  doc: '[0,1]   E-value cutoff for inclusion in result alignment (def=0.001)       '
  type: boolean
  inputBinding:
    prefix: -e
- id: m
  doc: 'use FASTA: columns with residue in 1st sequence are match states'
  type: string
  inputBinding:
    prefix: -M
- id: m
  doc: '[0,100]     use FASTA: columns with fewer than X% gaps are match states   '
  type: boolean
  inputBinding:
    prefix: -M
- id: tags
  doc: '/-notags  do NOT / do neutralize His-, C-myc-, FLAG-tags, and trypsin  recognition
    sequence to background distribution (def=-notags)  '
  type: boolean
  inputBinding:
    prefix: -tags
- id: o
  doc: write results in standard format to file (default=<infile.hhr>)
  type: File
  inputBinding:
    prefix: -o
- id: oa3m
  doc: write result MSA with significant matches in a3m format
  type: File
  inputBinding:
    prefix: -oa3m
- id: opsi
  doc: write result MSA of significant matches in PSI-BLAST format
  type: File
  inputBinding:
    prefix: -opsi
- id: oh_hm
  doc: write HHM file for result MSA of significant matches
  type: File
  inputBinding:
    prefix: -ohhm
- id: oal_is
  doc: write MSAs in A3M format after each iteration
  type: string
  inputBinding:
    prefix: -oalis
- id: blast_tab
  doc: "write result in tabular BLAST format (compatible to -m 8 or -outfmt 6 output)\
    \ 1      2      3           4         5        6      8    9      10   11   12\
    \ 'query target #match/tLen #mismatch #gapOpen qstart qend tstart tend eval score'"
  type: string
  inputBinding:
    prefix: -blasttab
- id: add_cons
  doc: generate consensus sequence as master sequence of query MSA (default=don't)
  type: boolean
  inputBinding:
    prefix: -add_cons
- id: hide_cons
  doc: "don't show consensus sequence in alignments (default=show)     "
  type: boolean
  inputBinding:
    prefix: -hide_cons
- id: hide_pred
  doc: don't show predicted 2ndary structure in alignments (default=show)
  type: boolean
  inputBinding:
    prefix: -hide_pred
- id: hide_dssp
  doc: "don't show DSSP 2ndary structure in alignments (default=show)  "
  type: boolean
  inputBinding:
    prefix: -hide_dssp
- id: show_ss_conf
  doc: show confidences for predicted 2ndary structure in alignments
  type: boolean
  inputBinding:
    prefix: -show_ssconf
- id: of_as
  doc: 'write pairwise alignments in FASTA xor A2M (-Oa2m) xor A3M (-Oa3m) format   '
  type: File
  inputBinding:
    prefix: -Ofas
- id: seq
  doc: 'max. number of query/template sequences displayed (default=1)  '
  type: long
  inputBinding:
    prefix: -seq
- id: ali_w
  doc: 'number of columns per line in alignment list (default=80)       '
  type: long
  inputBinding:
    prefix: -aliw
- id: p
  doc: '[0,100]     minimum probability in summary and alignment list (default=20)  '
  type: boolean
  inputBinding:
    prefix: -p
- id: e
  doc: '[0,inf[     maximum E-value in summary and alignment list (default=1E+06)      '
  type: boolean
  inputBinding:
    prefix: -E
- id: z
  doc: 'maximum number of lines in summary hit list (default=500)        '
  type: long
  inputBinding:
    prefix: -Z
- id: z
  doc: 'minimum number of lines in summary hit list (default=10)        '
  type: long
  inputBinding:
    prefix: -z
- id: b
  doc: 'maximum number of alignments in alignment list (default=500)     '
  type: long
  inputBinding:
    prefix: -B
- id: b
  doc: 'minimum number of alignments in alignment list (default=10)     '
  type: long
  inputBinding:
    prefix: -b
- id: no_pre_filt
  doc: 'disable all filter steps                                        '
  type: boolean
  inputBinding:
    prefix: -noprefilt
- id: no_add_filter
  doc: 'disable all filter steps (except for fast prefiltering)         '
  type: boolean
  inputBinding:
    prefix: -noaddfilter
- id: max_filt
  doc: 'max number of hits allowed to pass 2nd prefilter (default=20000)   '
  type: boolean
  inputBinding:
    prefix: -maxfilt
- id: min_prefilter_hits
  doc: 'min number of hits to pass prefilter (default=100)               '
  type: boolean
  inputBinding:
    prefix: -min_prefilter_hits
- id: pre_pre_smax_thresh
  doc: 'min score threshold of ungapped prefilter (default=10)               '
  type: boolean
  inputBinding:
    prefix: -prepre_smax_thresh
- id: pre_evalue_thresh
  doc: max E-value threshold of Smith-Waterman prefilter score (default=1000.0)
  type: boolean
  inputBinding:
    prefix: -pre_evalue_thresh
- id: pre_bit_factor
  doc: prefilter scores are in units of 1 bit / pre_bitfactor (default=4)
  type: boolean
  inputBinding:
    prefix: -pre_bitfactor
- id: pre_gap_open
  doc: gap open penalty in prefilter Smith-Waterman alignment (default=20)
  type: boolean
  inputBinding:
    prefix: -pre_gap_open
- id: pre_gap_extend
  doc: gap extend penalty in prefilter Smith-Waterman alignment (default=4)
  type: boolean
  inputBinding:
    prefix: -pre_gap_extend
- id: pre_score_offset
  doc: offset on sequence profile scores in prefilter S-W alignment (default=50)
  type: boolean
  inputBinding:
    prefix: -pre_score_offset
- id: id
  doc: '[0,100]  maximum pairwise sequence identity (def=90)'
  type: boolean
  inputBinding:
    prefix: -id
- id: diff
  doc: '[0,inf[  filter MSAs by selecting most diverse set of sequences, keeping  at
    least this many seqs in each MSA block of length 50  Zero and non-numerical values
    turn off the filtering. (def=1000) '
  type: boolean
  inputBinding:
    prefix: -diff
- id: cov
  doc: '[0,100]  minimum coverage with master sequence (%) (def=0)             '
  type: boolean
  inputBinding:
    prefix: -cov
- id: qid
  doc: '[0,100]  minimum sequence identity with master sequence (%) (def=0)    '
  type: boolean
  inputBinding:
    prefix: -qid
- id: qsc
  doc: '[0,100]  minimum score per column with master sequence (default=-20.0)    '
  type: boolean
  inputBinding:
    prefix: -qsc
- id: neff
  doc: '[1,inf]  target diversity of multiple sequence alignment (default=off)   '
  type: boolean
  inputBinding:
    prefix: -neff
- id: mark
  doc: 'do not filter out sequences marked by ">@"in their name line  '
  type: boolean
  inputBinding:
    prefix: -mark
- id: no_realign
  doc: 'do NOT realign displayed hits with MAC algorithm (def=realign)   '
  type: boolean
  inputBinding:
    prefix: -norealign
- id: realign_old_hits
  doc: 'realign hits from previous iterations                          '
  type: boolean
  inputBinding:
    prefix: -realign_old_hits
- id: mact
  doc: '[0,1[          posterior prob threshold for MAC realignment controlling greedi-  ness
    at alignment ends: 0:global >0.1:local (default=0.35)       '
  type: boolean
  inputBinding:
    prefix: -mact
- id: glob
  doc: /-loc           use global/local alignment mode for searching/ranking (def=local)
  type: boolean
  inputBinding:
    prefix: -glob
- id: realign
  doc: 'realign displayed hits with max. accuracy (MAC) algorithm '
  type: boolean
  inputBinding:
    prefix: -realign
- id: realign_max
  doc: 'realign max. <int> hits (default=500)                        '
  type: long
  inputBinding:
    prefix: -realign_max
- id: ovlp
  doc: 'banded alignment: forbid <ovlp> largest diagonals |i-j| of DP matrix (def=0)'
  type: long
  inputBinding:
    prefix: -ovlp
- id: alt
  doc: 'show up to this many alternative alignments with raw score > smin(def=4)  '
  type: long
  inputBinding:
    prefix: -alt
- id: sm_in
  doc: 'minimum raw score for alternative alignments (def=20.0)  '
  type: double
  inputBinding:
    prefix: -smin
- id: shift
  doc: '[-1,1]        profile-profile score offset (def=-0.03)                         '
  type: boolean
  inputBinding:
    prefix: -shift
- id: corr
  doc: '[0,1]          weight of term for pair correlations (def=0.10)                '
  type: boolean
  inputBinding:
    prefix: -corr
- id: sc
  doc: '<int>          amino acid score         (tja: template HMM at column j) (def=1)
    0       = log2 Sum(tja*qia/pa)   (pa: aa background frequencies)     1       =
    log2 Sum(tja*qia/pqa)  (pqa = 1/2*(pa+ta) )                2       = log2 Sum(tja*qia/ta)   (ta:
    av. aa freqs in template)      3       = log2 Sum(tja*qia/qa)   (qa: av. aa freqs
    in query)         5       local amino acid composition correction                     '
  type: boolean
  inputBinding:
    prefix: -sc
- id: ssm
  doc: '{0,..,4}        0:   no ss scoring                                              1,2:
    ss scoring after or during alignment  [default=2]          3,4: ss scoring after
    or during alignment, predicted vs. predicted'
  type: boolean
  inputBinding:
    prefix: -ssm
- id: ssw
  doc: '[0,1]           weight of ss score  (def=0.11)                                  '
  type: boolean
  inputBinding:
    prefix: -ssw
- id: ssa
  doc: '[0,1]           ss confusion matrix = (1-ssa)*I + ssa*psipred-confusion-matrix
    [def=1.00)'
  type: boolean
  inputBinding:
    prefix: -ssa
- id: wg
  doc: 'use global sequence weighting for realignment!                   '
  type: boolean
  inputBinding:
    prefix: -wg
- id: gap_b
  doc: '[0,inf[  Transition pseudocount admixture (def=1.00)                     '
  type: boolean
  inputBinding:
    prefix: -gapb
- id: gap_d
  doc: '[0,inf[  Transition pseudocount admixture for open gap (default=0.15)    '
  type: boolean
  inputBinding:
    prefix: -gapd
- id: gape
  doc: '[0,1.5]  Transition pseudocount admixture for extend gap (def=1.00)      '
  type: boolean
  inputBinding:
    prefix: -gape
- id: gap_f
  doc: ']0,inf]  factor to increase/reduce gap open penalty for deletes (def=0.60) '
  type: boolean
  inputBinding:
    prefix: -gapf
- id: gap_g
  doc: ']0,inf]  factor to increase/reduce gap open penalty for inserts (def=0.60) '
  type: boolean
  inputBinding:
    prefix: -gapg
- id: gap_h
  doc: ']0,inf]  factor to increase/reduce gap extend penalty for deletes(def=0.60)'
  type: boolean
  inputBinding:
    prefix: -gaph
- id: gap_i
  doc: ']0,inf]  factor to increase/reduce gap extend penalty for inserts(def=0.60)'
  type: boolean
  inputBinding:
    prefix: -gapi
- id: eg_q
  doc: '[0,inf[  penalty (bits) for end gaps aligned to query residues (def=0.00) '
  type: boolean
  inputBinding:
    prefix: -egq
- id: egt
  doc: '[0,inf[  penalty (bits) for end gaps aligned to template residues (def=0.00)'
  type: boolean
  inputBinding:
    prefix: -egt
- id: pc_hhm_con_txt_a
  doc: '[0,1]        overall pseudocount admixture (def=0.9)                        '
  type: boolean
  inputBinding:
    prefix: -pc_hhm_contxt_a
- id: pc_hhm_con_txt_b
  doc: '[1,inf[      Neff threshold value for mode 2 (def=4.0)                      '
  type: boolean
  inputBinding:
    prefix: -pc_hhm_contxt_b
- id: pc_hhm_con_txt_c
  doc: '[0,3]        extinction exponent c for mode 2 (def=1.0)                     '
  type: boolean
  inputBinding:
    prefix: -pc_hhm_contxt_c
- id: pc_hhm_no_con_txt_a
  doc: '[0,1]        overall pseudocount admixture (def=1.0)                        '
  type: boolean
  inputBinding:
    prefix: -pc_hhm_nocontxt_a
- id: pc_hhm_no_con_txt_b
  doc: '[1,inf[      Neff threshold value for mode 2 (def=1.5)                      '
  type: boolean
  inputBinding:
    prefix: -pc_hhm_nocontxt_b
- id: pc_hhm_no_con_txt_c
  doc: '[0,3]        extinction exponent c for mode 2 (def=1.0)                     '
  type: boolean
  inputBinding:
    prefix: -pc_hhm_nocontxt_c
- id: pc_prefilter_con_txt_a
  doc: '[0,1]        overall pseudocount admixture (def=0.8)                        '
  type: boolean
  inputBinding:
    prefix: -pc_prefilter_contxt_a
- id: pc_prefilter_con_txt_b
  doc: '[1,inf[      Neff threshold value for mode 2 (def=2.0)                      '
  type: boolean
  inputBinding:
    prefix: -pc_prefilter_contxt_b
- id: pc_prefilter_con_txt_c
  doc: '[0,3]        extinction exponent c for mode 2 (def=1.0)                     '
  type: boolean
  inputBinding:
    prefix: -pc_prefilter_contxt_c
- id: pc_prefilter_no_con_txt_a
  doc: '[0,1]        overall pseudocount admixture (def=1.0)                        '
  type: boolean
  inputBinding:
    prefix: -pc_prefilter_nocontxt_a
- id: pc_prefilter_no_con_txt_b
  doc: '[1,inf[      Neff threshold value for mode 2 (def=1.5)                      '
  type: boolean
  inputBinding:
    prefix: -pc_prefilter_nocontxt_b
- id: pc_prefilter_no_con_txt_c
  doc: '[0,3]        extinction exponent c for mode 2 (def=1.0)                     '
  type: boolean
  inputBinding:
    prefix: -pc_prefilter_nocontxt_c
- id: no_con_txt
  doc: 'use substitution-matrix instead of context-specific pseudocounts '
  type: boolean
  inputBinding:
    prefix: -nocontxt
- id: con_txt
  doc: context file for computing context-specific pseudocounts (default=)
  type: File
  inputBinding:
    prefix: -contxt
- id: csw
  doc: '[0,inf]  weight of central position in cs pseudocount mode (def=1.6)'
  type: boolean
  inputBinding:
    prefix: -csw
- id: csb
  doc: '[0,1]    weight decay parameter for positions in cs pc mode (def=0.9)'
  type: boolean
  inputBinding:
    prefix: -csb
- id: v
  doc: 'verbose mode: 0:no screen output  1:only warings  2: verbose (def=2)'
  type: long
  inputBinding:
    prefix: -v
- id: neff_max
  doc: ']1,20] skip further search iterations when diversity Neff of query MSA  becomes
    larger than neffmax (default=20.0)'
  type: boolean
  inputBinding:
    prefix: -neffmax
- id: cpu
  doc: 'number of CPUs to use (for shared memory SMPs) (default=2)      '
  type: long
  inputBinding:
    prefix: -cpu
- id: scores
  doc: 'write scores for all pairwise comparisons to file               '
  type: File
  inputBinding:
    prefix: -scores
- id: filter_matrices
  doc: matrices for similarity to output at most 100 matrices
  type: string
  inputBinding:
    prefix: -filter_matrices
- id: a_tab
  doc: '<file> write all alignments in tabular layout to file                   '
  type: boolean
  inputBinding:
    prefix: -atab
- id: max_seq
  doc: max number of input rows (def=65535)
  type: long
  inputBinding:
    prefix: -maxseq
- id: max_res
  doc: max number of HMM columns (def=20001)
  type: long
  inputBinding:
    prefix: -maxres
- id: maxmem
  doc: '[1,inf[ limit memory for realignment (in GB) (def=3.0)          '
  type: boolean
  inputBinding:
    prefix: -maxmem
outputs: []
cwlVersion: v1.1
baseCommand:
- hhblits_omp
