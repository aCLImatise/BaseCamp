class: CommandLineTool
id: RNAforester.cwl
inputs:
- id: in_read_input_file
  doc: read input from file
  type: File
  inputBinding:
    prefix: -f
- id: in_score
  doc: compute only scores, no alignment
  type: boolean
  inputBinding:
    prefix: --score
- id: in_no_scale
  doc: suppress output of scale
  type: boolean
  inputBinding:
    prefix: --noscale
- id: in_tables
  doc: shows dynamic programming tables
  type: boolean
  inputBinding:
    prefix: --tables
- id: in_backtrace
  doc: shows backtrace call table cells
  type: boolean
  inputBinding:
    prefix: --backtrace
- id: in_calculate_alignment_top
  doc: calculate alignment top down instead of bottom up
  type: boolean
  inputBinding:
    prefix: -t
- id: in_calculate_distance_instead
  doc: calculate distance instead of similarity
  type: boolean
  inputBinding:
    prefix: -d
- id: in_calculate_relative_score
  doc: calculate relative score
  type: boolean
  inputBinding:
    prefix: -r
- id: in_local_similarity
  doc: local similarity
  type: boolean
  inputBinding:
    prefix: -l
- id: in_so
  doc: local suboptimal alignments within int%
  type: long
  inputBinding:
    prefix: -so
- id: in_smallinlarge_similarity
  doc: small-in-large similarity
  type: boolean
  inputBinding:
    prefix: -s
- id: in_anchor
  doc: use shape anchoring for speedup
  type: boolean
  inputBinding:
    prefix: --anchor
- id: in_affine_gap_scoring
  doc: affine gap scoring
  type: boolean
  inputBinding:
    prefix: -a
- id: in_multiple_alignment_mode
  doc: multiple alignment mode
  type: boolean
  inputBinding:
    prefix: -m
- id: in_ribo_sum
  doc: RIBOSUM85-60 scoring matrix (base-pair substitutions)
  type: boolean
  inputBinding:
    prefix: --RIBOSUM
- id: in_cbm_in
  doc: minimum base frequency for consensus structure
  type: string
  inputBinding:
    prefix: -cbmin
- id: in_cm_in
  doc: minimum basepair frequency for consensus structure
  type: string
  inputBinding:
    prefix: -cmin
- id: in_mt
  doc: clustering threshold
  type: string
  inputBinding:
    prefix: -mt
- id: in_mc
  doc: clustering cutoff
  type: string
  inputBinding:
    prefix: -mc
- id: in_predict_structures_sequences
  doc: predict structures from sequences
  type: boolean
  inputBinding:
    prefix: -p
- id: in_pm_in
  doc: minimum basepair frequency for prediction
  type: string
  inputBinding:
    prefix: -pmin
- id: in_sp
  doc: save profile
  type: File
  inputBinding:
    prefix: -sp
- id: in_ps
  doc: profile search
  type: File
  inputBinding:
    prefix: -ps
- id: in_pm
  doc: basepair(bond) match score
  type: long
  inputBinding:
    prefix: -pm
- id: in_pd
  doc: basepair bond indel score
  type: long
  inputBinding:
    prefix: -pd
- id: in_pdo
  doc: basepair bond indel open score
  type: long
  inputBinding:
    prefix: -pdo
- id: in_bm
  doc: base match score
  type: long
  inputBinding:
    prefix: -bm
- id: in_br
  doc: base mismatch score
  type: long
  inputBinding:
    prefix: -br
- id: in_bd
  doc: base indel score
  type: long
  inputBinding:
    prefix: -bd
- id: in_b_do
  doc: base indel open score
  type: long
  inputBinding:
    prefix: -bdo
- id: in_two_d
  doc: generate alignment 2D plots in postscript format
  type: boolean
  inputBinding:
    prefix: -2d
- id: in_two_d_hide_base_num
  doc: hide base numbers in 2D plot
  type: boolean
  inputBinding:
    prefix: --2d_hidebasenum
- id: in_two_d_base_num_interval
  doc: show every n-th base number
  type: long
  inputBinding:
    prefix: --2d_basenuminterval
- id: in_two_d_grey
  doc: use only grey colors in 2D plots
  type: boolean
  inputBinding:
    prefix: --2d_grey
- id: in_two_d_scale
  doc: scale factor for the 2d plots
  type: long
  inputBinding:
    prefix: --2d_scale
- id: in_two_d_fig
  doc: generate additional fig file of 2d plot
  type: boolean
  inputBinding:
    prefix: --2d_fig
- id: in_fast_a
  doc: generate fasta output of alignments
  type: boolean
  inputBinding:
    prefix: --fasta
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- RNAforester
