class: CommandLineTool
id: hhsearch_omp.cwl
inputs:
- id: i
  doc: input/query multiple sequence alignment (a2m, a3m, FASTA) or HMM
  type: File
  inputBinding:
    prefix: -i
- id: d
  doc: database name (e.g. uniprot20_29Feb2012)                         Multiple databases
    may be specified with '-d <db1> -d <db2> ...'
  type: string
  inputBinding:
    prefix: -d
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
- id: blast_tab
  doc: "write result in tabular BLAST format (compatible to -m 8 or -outfmt 6 output)\
    \ 1      2      3           4         5        6      8    9      10   11   12\
    \ 'query target #match/tLen #mismatch #gapOpen qstart qend tstart tend eval score'"
  type: string
  inputBinding:
    prefix: -blasttab
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
- id: all
  doc: 'show all sequences in result MSA; do not filter result MSA      '
  type: boolean
  inputBinding:
    prefix: -all
- id: id
  doc: '[0,100]  maximum pairwise sequence identity (def=90)'
  type: boolean
  inputBinding:
    prefix: -id
- id: diff
  doc: '[0,inf[  filter MSAs by selecting most diverse set of sequences, keeping  at
    least this many seqs in each MSA block of length 50  Zero and non-numerical values
    turn off the filtering. (def=100) '
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
- id: ovlp
  doc: 'banded alignment: forbid <ovlp> largest diagonals |i-j| of DP matrix (def=0)'
  type: long
  inputBinding:
    prefix: -ovlp
- id: mact
  doc: '[0,1[         posterior prob threshold for MAC realignment controlling greedi-  ness
    at alignment ends: 0:global >0.1:local (default=0.35)       '
  type: boolean
  inputBinding:
    prefix: -mact
- id: glob
  doc: /-loc          use global/local alignment mode for searching/ranking (def=local)
  type: boolean
  inputBinding:
    prefix: -glob
- id: realign
  doc: 'realign displayed hits with max. accuracy (MAC) algorithm '
  type: boolean
  inputBinding:
    prefix: -realign
- id: excl
  doc: "exclude query positions from the alignment, e.g. '1-33,97-168' "
  type: string
  inputBinding:
    prefix: -excl
- id: realign_max
  doc: 'realign max. <int> hits (default=500)                        '
  type: long
  inputBinding:
    prefix: -realign_max
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
  doc: '[-1,1]       profile-profile score offset (def=-0.03)                         '
  type: boolean
  inputBinding:
    prefix: -shift
- id: corr
  doc: '[0,1]         weight of term for pair correlations (def=0.10)                '
  type: boolean
  inputBinding:
    prefix: -corr
- id: sc
  doc: '<int>         amino acid score         (tja: template HMM at column j) (def=1)
    0       = log2 Sum(tja*qia/pa)   (pa: aa background frequencies)     1       =
    log2 Sum(tja*qia/pqa)  (pqa = 1/2*(pa+ta) )                2       = log2 Sum(tja*qia/ta)   (ta:
    av. aa freqs in template)      3       = log2 Sum(tja*qia/qa)   (qa: av. aa freqs
    in query)         5       local amino acid composition correction                     '
  type: boolean
  inputBinding:
    prefix: -sc
- id: ssm
  doc: '{0,..,4}    0:   no ss scoring                                              1,2:
    ss scoring after or during alignment  [default=2]          3,4: ss scoring after
    or during alignment, predicted vs. predicted'
  type: boolean
  inputBinding:
    prefix: -ssm
- id: ssw
  doc: '[0,1]          weight of ss score  (def=0.11)                                  '
  type: boolean
  inputBinding:
    prefix: -ssw
- id: ssa
  doc: '[0,1]          SS substitution matrix = (1-ssa)*I + ssa*full-SS-substition-matrix
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
  doc: 'verbose mode: 0:no screen output  1:only warnings  2: verbose (def=2)'
  type: long
  inputBinding:
    prefix: -v
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
- hhsearch_omp
