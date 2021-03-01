class: CommandLineTool
id: spaln.cwl
inputs:
- id: in_generate_local_table
  doc: Generate local lookup table for each block
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_xc
  doc: '#    number of bit patterns < 6 (1)'
  type: boolean?
  inputBinding:
    prefix: -XC
- id: in_xg
  doc: '#    Maximum expected gene size (inferred from genome|db size)'
  type: boolean?
  inputBinding:
    prefix: -XG
- id: in_xk
  doc: '#    Word size (inferred from genome|db size)'
  type: boolean?
  inputBinding:
    prefix: -Xk
- id: in_xb
  doc: '#    Block size (inferred from genome|db size)'
  type: boolean?
  inputBinding:
    prefix: -Xb
- id: in_x_a
  doc: '#    Abundance factor (10)'
  type: boolean?
  inputBinding:
    prefix: -Xa
- id: in_xr
  doc: '#    Minimum ORF length with -KP (30))'
  type: boolean?
  inputBinding:
    prefix: -Xr
- id: in_gzipped_output
  doc: gzipped output
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_mutlithread_operation_threads
  doc: '#     Mutli-thread operation with # threads'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_minimum_score_report
  doc: '#     Minimum score for report (35)'
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_ls
  doc: '#        semi-global or local alignment (-L)'
  type: string?
  inputBinding:
    prefix: -LS
- id: in_number_outputs_omitted
  doc: "#[,#2]        Number of outputs per query (1) (4 if # is omitted)\n#2 (4)\
    \ specifies the max number of candidate loci\nThis option is effective only for\
    \ map-and-align modes"
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_gvsac_gffgene_alignment
  doc: "#[,#2,..] (GvsA|C)    0:Gff3_gene; 1:alignment; 2:Gff3_match; 3:Bed; 4:exon-inf;\n\
    5:intron-inf; 6:cDNA; 7:translated; 8:block-only;\n10:SAM; 12:binary; 15:query+GS\
    \ (4)"
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_dp_hspsearch_blocksearch
  doc: '#     0:DP; 1-3:HSP-Search; 4-7; Block-Search (3)'
  type: boolean?
  inputBinding:
    prefix: -Q
- id: in_read_block_file
  doc: $     Read block information file *.bkn, *.bkp or *.bka
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_orientation_annotation_forward
  doc: '#     Orientation. 0:annotation; 1:forward; 2:reverse; 3:both (3)'
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_subdirectory_where_reside
  doc: $     Subdirectory where species-specific parameters reside
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_specify_aadb_run
  doc: $     Specify AAdb. Must run `makeidx.pl -ia' breforehand
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_same_db_sequences
  doc: $     Same as -a but db sequences are stored in memory
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_specify_genome_run
  doc: $     Specify genome. Must run `makeidx.pl -i[n|p]' breforehand
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_same_d_db
  doc: $     Same as -d but db sequences are stored in memory
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_number_characters_line
  doc: '#     Number of characters per line in alignment (60)'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_filedirectoryprefix_where_written
  doc: $     File/directory/prefix where results are written (stdout)
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_pa
  doc: "#    Remove 3' poly A >= # (0: don't remove)"
  type: boolean?
  inputBinding:
    prefix: -pa
- id: in_pw
  doc: Report results even if the score is below the threshold
  type: boolean?
  inputBinding:
    prefix: -pw
- id: in_pq
  doc: Quiet mode
  type: boolean?
  inputBinding:
    prefix: -pq
- id: in_report_information_block
  doc: $     Report information about block data file
  type: boolean?
  inputBinding:
    prefix: -r
- id: in__gapextension_penalty
  doc: '#     Gap-extension penalty (3)'
  type: boolean?
  inputBinding:
    prefix: -u
- id: in__gapopen_penalty
  doc: '#     Gap-open penalty (8)'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_band_width_scan
  doc: '#     Band width for DP matrix scan (100)'
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_ya
  doc: '#    Stringency of splice site. 0->3:strong->weak'
  type: boolean?
  inputBinding:
    prefix: -ya
- id: in_yl_three
  doc: Ddouble affine gap penalty
  type: boolean?
  inputBinding:
    prefix: -yl3
- id: in_ym
  doc: '#    Nucleotide match score (2)'
  type: boolean?
  inputBinding:
    prefix: -ym
- id: in_yn
  doc: '#    Nucleotide mismatch score (-6)'
  type: boolean?
  inputBinding:
    prefix: -yn
- id: in_yo
  doc: '#    Penalty for a premature termination codon (100)'
  type: boolean?
  inputBinding:
    prefix: -yo
- id: in_yx
  doc: '#    Penalty for a frame shift error (100)'
  type: boolean?
  inputBinding:
    prefix: -yx
- id: in_yy
  doc: '#    Weight for splice site signal (8)'
  type: boolean?
  inputBinding:
    prefix: -yy
- id: in_weight_coding_potential
  doc: '#    Weight for coding potential (2)'
  type: boolean?
  inputBinding:
    prefix: -yz
- id: in_yb
  doc: '#    Weight for branch point signal (0)'
  type: boolean?
  inputBinding:
    prefix: -yB
- id: in_yi
  doc: $    Intron length distribution
  type: boolean?
  inputBinding:
    prefix: -yI
- id: in_yl
  doc: '#    Minimum expected length of intron (30)'
  type: boolean?
  inputBinding:
    prefix: -yL
- id: in_ys
  doc: '[#]  Use species-specific parameter set (0.0/0.5)'
  type: boolean?
  inputBinding:
    prefix: -yS
- id: in_yx_zero
  doc: Don't use parameter set for cross-species comparison
  type: boolean?
  inputBinding:
    prefix: -yX0
- id: in_weight_intron_potential
  doc: '#    Weight for intron potential (0)'
  type: boolean?
  inputBinding:
    prefix: -yZ
- id: in_kd
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -KD
- id: in_var_45
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -W
- id: in_genome_dot_bkn
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_w_options
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_genome_dot_mfa
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- spaln
