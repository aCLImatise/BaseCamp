class: CommandLineTool
id: ../../../glimmer3.cwl
inputs:
- id: in_a
  doc: ''
  type: string
  inputBinding:
    prefix: -A
- id: in_start_codons
  doc: "Use comma-separated list of codons as start codons\nSample format:  -A atg,gtg\n\
    Use -P option to specify relative proportions of use.\nIf -P not used, then proportions\
    \ will be equal"
  type: string
  inputBinding:
    prefix: --start_codons
- id: in_b
  doc: ''
  type: File
  inputBinding:
    prefix: -b
- id: in_rbs_pwm
  doc: "Read a position weight matrix (PWM) from <filename> to identify\nthe ribosome\
    \ binding site to help choose start sites"
  type: File
  inputBinding:
    prefix: --rbs_pwm
- id: in_c
  doc: ''
  type: string
  inputBinding:
    prefix: -C
- id: in_gc_percent
  doc: "Use <p> as GC percentage of independent model\nNote:  <p> should be a percentage,\
    \ e.g., -C 45.2"
  type: double
  inputBinding:
    prefix: --gc_percent
- id: in_e
  doc: ''
  type: File
  inputBinding:
    prefix: -E
- id: in_entropy
  doc: "Read entropy profiles from <filename>.  Format is one header\nline, then 20\
    \ lines of 3 columns each.  Columns are amino acid,\npositive entropy, negative\
    \ entropy.  Rows must be in order\nby amino acid code letter"
  type: File
  inputBinding:
    prefix: --entropy
- id: in_f
  doc: ''
  type: boolean
  inputBinding:
    prefix: -f
- id: in_first_codon
  doc: Use first codon in orf as start codon
  type: boolean
  inputBinding:
    prefix: --first_codon
- id: in_g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: in_gene_len
  doc: Set minimum gene length to <n>
  type: long
  inputBinding:
    prefix: --gene_len
- id: in_help
  doc: Print this message
  type: boolean
  inputBinding:
    prefix: --help
- id: in_i
  doc: ''
  type: File
  inputBinding:
    prefix: -i
- id: in_ignore
  doc: "<filename> specifies regions of bases that are off\nlimits, so that no bases\
    \ within that area will be examined"
  type: File
  inputBinding:
    prefix: --ignore
- id: in_var_15
  doc: ''
  type: boolean
  inputBinding:
    prefix: -l
- id: in_linear
  doc: Assume linear rather than circular genome, i.e., no wraparound
  type: boolean
  inputBinding:
    prefix: --linear
- id: in_var_17
  doc: ''
  type: File
  inputBinding:
    prefix: -L
- id: in_orf_coords
  doc: "Use <filename> to specify a list of orfs that should\nbe scored separately,\
    \ with no overlap rules"
  type: File
  inputBinding:
    prefix: --orf_coords
- id: in_m
  doc: ''
  type: boolean
  inputBinding:
    prefix: -M
- id: in_separate_genes
  doc: "<sequence-file> is a multifasta file of separate genes to\nbe scored separately,\
    \ with no overlap rules"
  type: boolean
  inputBinding:
    prefix: --separate_genes
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_max_olap
  doc: "Set maximum overlap length to <n>.  Overlaps this short or shorter\nare ignored."
  type: long
  inputBinding:
    prefix: --max_olap
- id: in_p
  doc: ''
  type: long
  inputBinding:
    prefix: -P
- id: in_start_probs
  doc: "Specify probability of different start codons (same number & order\nas in\
    \ -A option).  If no -A option, then 3 values for atg, gtg and ttg\nin that order.\
    \  Sample format:  -P 0.6,0.35,0.05\nIf -A is specified without -P, then starts\
    \ are equally likely."
  type: long
  inputBinding:
    prefix: --start_probs
- id: in_q
  doc: ''
  type: string
  inputBinding:
    prefix: -q
- id: in_ignore_score_len
  doc: "Do not use the initial score filter on any gene <n> or more\nbase long"
  type: string
  inputBinding:
    prefix: --ignore_score_len
- id: in_r
  doc: ''
  type: boolean
  inputBinding:
    prefix: -r
- id: in_no_indep
  doc: Don't use independent probability score column
  type: boolean
  inputBinding:
    prefix: --no_indep
- id: in_t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: in_threshold
  doc: "Set threshold score for calling as gene to n.  If the in-frame\nscore >= <n>,\
    \ then the region is given a number and considered\na potential gene."
  type: long
  inputBinding:
    prefix: --threshold
- id: in_x
  doc: ''
  type: boolean
  inputBinding:
    prefix: -X
- id: in_extend
  doc: Allow orfs extending off ends of sequence to be scored
  type: boolean
  inputBinding:
    prefix: --extend
- id: in_var_33
  doc: ''
  type: string
  inputBinding:
    prefix: -z
- id: in_trans_table
  doc: Use Genbank translation table number <n> for stop codons
  type: long
  inputBinding:
    prefix: --trans_table
- id: in_var_35
  doc: ''
  type: string
  inputBinding:
    prefix: -Z
- id: in_stop_codons
  doc: "Use comma-separated list of codons as stop codons\nSample format:  -Z tag,tga,taa\n"
  type: string
  inputBinding:
    prefix: --stop_codons
- id: in_sequence_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_icm_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_tag
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- glimmer3
