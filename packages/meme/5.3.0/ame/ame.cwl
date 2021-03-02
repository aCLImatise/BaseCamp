class: CommandLineTool
id: ame.cwl
inputs:
- id: in_output_directory_default
  doc: 'output directory; default: ame_out'
  type: Directory?
  inputBinding:
    prefix: --o
- id: in_oc
  doc: 'overwrite output; default: ame_out'
  type: string?
  inputBinding:
    prefix: --oc
- id: in_control
  doc: "control sequences in FASTA format or the keyword\n'--shuffle--' to use shuffled\
    \ versions of the\nprimary sequences"
  type: File?
  inputBinding:
    prefix: --control
- id: in_km_er
  doc: "preserve k-mer frequencies when shuffling;\ndefault: 2"
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
  doc: "[avg|max|sum|totalhits]\nsequence scoring method; default: avg"
  type: boolean?
  inputBinding:
    prefix: --scoring
- id: in_hit_lo_fraction
  doc: "fraction of maximum log-odds for a hit;\ndefault: 0.25"
  type: double?
  inputBinding:
    prefix: --hit-lo-fraction
- id: in_evalue_report_threshold
  doc: "motif significance reporting threshold;\ndefault: 10"
  type: long?
  inputBinding:
    prefix: --evalue-report-threshold
- id: in_fast_a_threshold
  doc: "maximum FASTA score for sequence to be positive\n(requires --poslist pwm);\
    \ default: 0.001"
  type: double?
  inputBinding:
    prefix: --fasta-threshold
- id: in_fix_partition
  doc: number of sequences in positive partition;
  type: long?
  inputBinding:
    prefix: --fix-partition
- id: in_pos_list
  doc: "[fasta|pwm]     partition on affinity (fasta) or motif (pwm)\nscores; default:\
    \ fasta"
  type: boolean?
  inputBinding:
    prefix: --poslist
- id: in_log_f_scores
  doc: "use log of FASTA scores (pearson) or log of\nranks (spearman)"
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
  doc: motifs will be converted to this custom alphabet
  type: File?
  inputBinding:
    prefix: --xalph
- id: in_b_file
  doc: "background model file; default: motif file freqs\ndefault: unconstrained partition\
    \ maximization"
  type: File?
  inputBinding:
    prefix: --bfile
- id: in_motif_pseudo
  doc: "pseudocount for creating PWMs from motifs;\ndefault: 0.1"
  type: double?
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
  doc: "[1|2|3|4|5]     controls program verbosity (5=maximum verbosity);\ndefault:\
    \ 2"
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
- id: out_output_directory_default
  doc: 'output directory; default: ame_out'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory_default)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0
cwlVersion: v1.1
baseCommand:
- ame
