class: CommandLineTool
id: ../../../spaln.cwl
inputs:
- id: generate_local_table
  doc: Generate local lookup table for each block
  type: boolean
  inputBinding:
    prefix: -E
- id: xc
  doc: '#    number of bit patterns < 6 (1)'
  type: boolean
  inputBinding:
    prefix: -XC
- id: xg
  doc: '#    Maximum expected gene size (inferred from genome|db size)'
  type: boolean
  inputBinding:
    prefix: -XG
- id: xk
  doc: '#    Word size (inferred from genome|db size)'
  type: boolean
  inputBinding:
    prefix: -Xk
- id: xb
  doc: '#    Block size (inferred from genome|db size)'
  type: boolean
  inputBinding:
    prefix: -Xb
- id: x_a
  doc: '#    Abundance factor (10)'
  type: boolean
  inputBinding:
    prefix: -Xa
- id: xr
  doc: '#    Minimum ORF length with -KP (30))'
  type: boolean
  inputBinding:
    prefix: -Xr
- id: gzipped_output
  doc: gzipped output
  type: boolean
  inputBinding:
    prefix: -g
- id: mutlithread_operation_threads
  doc: '#     Mutli-thread operation with # threads'
  type: boolean
  inputBinding:
    prefix: -t
- id: minimum_score_report
  doc: '#     Minimum score for report (35)'
  type: boolean
  inputBinding:
    prefix: -H
- id: ls
  doc: '#        semi-global or local alignment (-L)'
  type: string
  inputBinding:
    prefix: -LS
- id: number_outputs_query
  doc: '#[,#2]        Number of outputs per query (1) (4 if # is omitted) #2 (4) specifies
    the max number of candidate loci This option is effective only for map-and-align
    modes'
  type: boolean
  inputBinding:
    prefix: -M
- id: dp_hspsearch_blocksearch
  doc: '#     0:DP; 1-3:HSP-Search; 4-7; Block-Search (3)'
  type: boolean
  inputBinding:
    prefix: -Q
- id: read_information_file
  doc: $     Read block information file *.bkn, *.bkp or *.bka
  type: boolean
  inputBinding:
    prefix: -R
- id: orientation_annotation_forward
  doc: '#     Orientation. 0:annotation; 1:forward; 2:reverse; 3:both (3)'
  type: boolean
  inputBinding:
    prefix: -S
- id: subdirectory_where_reside
  doc: $     Subdirectory where species-specific parameters reside
  type: boolean
  inputBinding:
    prefix: -T
- id: specify_aadb_must
  doc: $     Specify AAdb. Must run `makeidx.pl -ia' breforehand
  type: boolean
  inputBinding:
    prefix: -a
- id: same_db_sequences
  doc: $     Same as -a but db sequences are stored in memory
  type: boolean
  inputBinding:
    prefix: -A
- id: specify_genome_must
  doc: $     Specify genome. Must run `makeidx.pl -i[n|p]' breforehand
  type: boolean
  inputBinding:
    prefix: -d
- id: same_d_db
  doc: $     Same as -d but db sequences are stored in memory
  type: boolean
  inputBinding:
    prefix: -D
- id: number_characters_line
  doc: '#     Number of characters per line in alignment (60)'
  type: boolean
  inputBinding:
    prefix: -l
- id: filedirectoryprefix_where_results
  doc: $     File/directory/prefix where results are written (stdout)
  type: boolean
  inputBinding:
    prefix: -o
- id: pa
  doc: "#    Remove 3' poly A >= # (0: don't remove)"
  type: boolean
  inputBinding:
    prefix: -pa
- id: pw
  doc: Report results even if the score is below the threshold
  type: boolean
  inputBinding:
    prefix: -pw
- id: pq
  doc: Quiet mode
  type: boolean
  inputBinding:
    prefix: -pq
- id: report_information_block
  doc: $     Report information about block data file
  type: boolean
  inputBinding:
    prefix: -r
- id: _gapextension_penalty
  doc: '#     Gap-extension penalty (3)'
  type: boolean
  inputBinding:
    prefix: -u
- id: _gapopen_penalty
  doc: '#     Gap-open penalty (8)'
  type: boolean
  inputBinding:
    prefix: -v
- id: band_width_dp
  doc: '#     Band width for DP matrix scan (100)'
  type: boolean
  inputBinding:
    prefix: -w
- id: ya
  doc: '#    Stringency of splice site. 0->3:strong->weak'
  type: boolean
  inputBinding:
    prefix: -ya
- id: yl_three
  doc: Ddouble affine gap penalty
  type: boolean
  inputBinding:
    prefix: -yl3
- id: ym
  doc: '#    Nucleotide match score (2)'
  type: boolean
  inputBinding:
    prefix: -ym
- id: yn
  doc: '#    Nucleotide mismatch score (-6)'
  type: boolean
  inputBinding:
    prefix: -yn
- id: yo
  doc: '#    Penalty for a premature termination codon (100)'
  type: boolean
  inputBinding:
    prefix: -yo
- id: yx
  doc: '#    Penalty for a frame shift error (100)'
  type: boolean
  inputBinding:
    prefix: -yx
- id: yy
  doc: '#    Weight for splice site signal (8)'
  type: boolean
  inputBinding:
    prefix: -yy
- id: weight_coding_potential
  doc: '#    Weight for coding potential (2)'
  type: boolean
  inputBinding:
    prefix: -yz
- id: yb
  doc: '#    Weight for branch point signal (0)'
  type: boolean
  inputBinding:
    prefix: -yB
- id: yi
  doc: $    Intron length distribution
  type: boolean
  inputBinding:
    prefix: -yI
- id: yl
  doc: '#    Minimum expected length of intron (30)'
  type: boolean
  inputBinding:
    prefix: -yL
- id: ys
  doc: '[#]  Use species-specific parameter set (0.0/0.5)'
  type: boolean
  inputBinding:
    prefix: -yS
- id: yx_zero
  doc: Don't use parameter set for cross-species comparison
  type: boolean
  inputBinding:
    prefix: -yX0
- id: weight_intron_potential
  doc: '#    Weight for intron potential (0)'
  type: boolean
  inputBinding:
    prefix: -yZ
- id: var_43
  doc: ''
  type: boolean
  inputBinding:
    prefix: -W
- id: kd
  doc: ''
  type: boolean
  inputBinding:
    prefix: -KD
- id: genome_dot_bkn
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: w_options
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: genome_dot_mfa
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- spaln
