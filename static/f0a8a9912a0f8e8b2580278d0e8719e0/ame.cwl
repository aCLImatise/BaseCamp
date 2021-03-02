class: CommandLineTool
id: ame.cwl
inputs:
- id: in_output_dir_output_directory
  doc: <output dir> output directory; default=ame_out
  type: Directory?
  inputBinding:
    prefix: --o
- id: in_oc
  doc: <output dir> overwrite output; default=ame_out
  type: boolean?
  inputBinding:
    prefix: --oc
- id: in_control
  doc: "<control file> control sequences in FASTA format or the keyword\n'--shuffle--'\
    \ to use shuffled versions of the primary sequences"
  type: boolean?
  inputBinding:
    prefix: --control
- id: in_km_er
  doc: 'preserve k-mer frequencies when shuffling letters; default: 2'
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_seed
  doc: 'random number seed (integer); default: 1'
  type: long?
  inputBinding:
    prefix: --seed
- id: in_method
  doc: "[fisher|3dmhg|4dmhg|ranksum|pearson|spearman]\nstatistical test; default:\
    \ fisher"
  type: boolean?
  inputBinding:
    prefix: --method
- id: in_scoring
  doc: "[avg|max|sum|totalhits] sequence scoring method;\ndefault: avg"
  type: boolean?
  inputBinding:
    prefix: --scoring
- id: in_hit_lo_fraction
  doc: '<fraction> fraction of maximum log-odds for a hit; default: 0.25'
  type: boolean?
  inputBinding:
    prefix: --hit-lo-fraction
- id: in_evalue_report_threshold
  doc: 'motif significance reporting threshold; default: 10'
  type: long?
  inputBinding:
    prefix: --evalue-report-threshold
- id: in_fast_a_threshold
  doc: "<ft> maximum FASTA score for sequence to be positive\n(requires --poslist\
    \ pwm); default: 0.001"
  type: boolean?
  inputBinding:
    prefix: --fasta-threshold
- id: in_fix_partition
  doc: <int> number of sequences in positive partition;
  type: boolean?
  inputBinding:
    prefix: --fix-partition
- id: in_pos_list
  doc: "[fasta|pwm] partition on affinity (fasta) or motif (pwm) scores;\ndefault:\
    \ fasta"
  type: boolean?
  inputBinding:
    prefix: --poslist
- id: in_log_f_scores
  doc: use log of FASTA scores (pearson) or log of ranks (spearman)
  type: boolean?
  inputBinding:
    prefix: --log-fscores
- id: in_log_pwm_scores
  doc: use log of log of PWM scores
  type: boolean?
  inputBinding:
    prefix: --log-pwmscores
- id: in_lin_reg_switch_xy
  doc: switch roles of X=FASTA scores and Y=PWM scores
  type: boolean?
  inputBinding:
    prefix: --linreg-switchxy
- id: in_x_alph
  doc: <alph file> motifs will be converted to this custom alphabet
  type: boolean?
  inputBinding:
    prefix: --xalph
- id: in_b_file
  doc: "<bfile> background model file; default: motif file freqs\ndefault: unconstrained\
    \ partition maximization"
  type: boolean?
  inputBinding:
    prefix: --bfile
- id: in_motif_pseudo
  doc: '<pc> pseudocount for creating PWMs from motifs; default: 0.1'
  type: boolean?
  inputBinding:
    prefix: --motif-pseudo
- id: in_inc
  doc: "name pattern to select as motif; may be\nrepeated; default: all motifs are\
    \ used"
  type: string?
  inputBinding:
    prefix: --inc
- id: in_exc
  doc: "name pattern to exclude as motif; may be\nrepeated; default: all motifs are\
    \ used"
  type: string?
  inputBinding:
    prefix: --exc
- id: in_verbose
  doc: "[1|2|3|4|5] controls program verbosity (5=maximum verbosity);\ndefault: 2"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_sequence_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_motif_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir_output_directory
  doc: <output dir> output directory; default=ame_out
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir_output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- ame
