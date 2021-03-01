class: CommandLineTool
id: glimmer3.cwl
inputs:
- id: in_start_codons
  doc: "Use comma-separated list of codons as start codons\nSample format:  -A atg,gtg\n\
    Use -P option to specify relative proportions of use.\nIf -P not used, then proportions\
    \ will be equal"
  type: string?
  inputBinding:
    prefix: --start_codons
- id: in_rbs_pwm
  doc: "Read a position weight matrix (PWM) from <filename> to identify\nthe ribosome\
    \ binding site to help choose start sites"
  type: File?
  inputBinding:
    prefix: --rbs_pwm
- id: in_gc_percent
  doc: "Use <p> as GC percentage of independent model\nNote:  <p> should be a percentage,\
    \ e.g., -C 45.2"
  type: double?
  inputBinding:
    prefix: --gc_percent
- id: in_entropy
  doc: "Read entropy profiles from <filename>.  Format is one header\nline, then 20\
    \ lines of 3 columns each.  Columns are amino acid,\npositive entropy, negative\
    \ entropy.  Rows must be in order\nby amino acid code letter"
  type: File?
  inputBinding:
    prefix: --entropy
- id: in_first_codon
  doc: Use first codon in orf as start codon
  type: boolean?
  inputBinding:
    prefix: --first_codon
- id: in_gene_len
  doc: Set minimum gene length to <n>
  type: long?
  inputBinding:
    prefix: --gene_len
- id: in_ignore
  doc: "<filename> specifies regions of bases that are off\nlimits, so that no bases\
    \ within that area will be examined"
  type: File?
  inputBinding:
    prefix: --ignore
- id: in_linear
  doc: Assume linear rather than circular genome, i.e., no wraparound
  type: boolean?
  inputBinding:
    prefix: --linear
- id: in_orf_coords
  doc: "Use <filename> to specify a list of orfs that should\nbe scored separately,\
    \ with no overlap rules"
  type: File?
  inputBinding:
    prefix: --orf_coords
- id: in_separate_genes
  doc: "<sequence-file> is a multifasta file of separate genes to\nbe scored separately,\
    \ with no overlap rules"
  type: boolean?
  inputBinding:
    prefix: --separate_genes
- id: in_max_olap
  doc: "Set maximum overlap length to <n>.  Overlaps this short or shorter\nare ignored."
  type: long?
  inputBinding:
    prefix: --max_olap
- id: in_start_probs
  doc: "Specify probability of different start codons (same number & order\nas in\
    \ -A option).  If no -A option, then 3 values for atg, gtg and ttg\nin that order.\
    \  Sample format:  -P 0.6,0.35,0.05\nIf -A is specified without -P, then starts\
    \ are equally likely."
  type: long?
  inputBinding:
    prefix: --start_probs
- id: in_ignore_score_len
  doc: "Do not use the initial score filter on any gene <n> or more\nbase long"
  type: string?
  inputBinding:
    prefix: --ignore_score_len
- id: in_no_indep
  doc: Don't use independent probability score column
  type: boolean?
  inputBinding:
    prefix: --no_indep
- id: in_threshold
  doc: "Set threshold score for calling as gene to n.  If the in-frame\nscore >= <n>,\
    \ then the region is given a number and considered\na potential gene."
  type: long?
  inputBinding:
    prefix: --threshold
- id: in_extend
  doc: Allow orfs extending off ends of sequence to be scored
  type: boolean?
  inputBinding:
    prefix: --extend
- id: in_trans_table
  doc: Use Genbank translation table number <n> for stop codons
  type: long?
  inputBinding:
    prefix: --trans_table
- id: in_stop_codons
  doc: "Use comma-separated list of codons as stop codons\nSample format:  -Z tag,tga,taa\n"
  type: string?
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
hints: []
cwlVersion: v1.1
baseCommand:
- glimmer3
