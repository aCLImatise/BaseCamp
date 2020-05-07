class: CommandLineTool
id: ame.cwl
inputs:
- id: o
  doc: <output dir> output directory; default=ame_out
  type: boolean
  inputBinding:
    prefix: --o
- id: oc
  doc: <output dir> overwrite output; default=ame_out
  type: boolean
  inputBinding:
    prefix: --oc
- id: control
  doc: <control file> control sequences in FASTA format or the keyword '--shuffle--'
    to use shuffled versions of the primary sequences
  type: boolean
  inputBinding:
    prefix: --control
- id: km_er
  doc: 'preserve k-mer frequencies when shuffling letters; default: 2'
  type: string
  inputBinding:
    prefix: --kmer
- id: seed
  doc: 'random number seed (integer); default: 1'
  type: string
  inputBinding:
    prefix: --seed
- id: method
  doc: '[fisher|3dmhg|4dmhg|ranksum|pearson|spearman] statistical test; default: fisher'
  type: boolean
  inputBinding:
    prefix: --method
- id: scoring
  doc: '[avg|max|sum|totalhits] sequence scoring method; default: avg'
  type: boolean
  inputBinding:
    prefix: --scoring
- id: hit_lo_fraction
  doc: '<fraction> fraction of maximum log-odds for a hit; default: 0.25'
  type: boolean
  inputBinding:
    prefix: --hit-lo-fraction
- id: evalue_report_threshold
  doc: 'motif significance reporting threshold; default: 10'
  type: string
  inputBinding:
    prefix: --evalue-report-threshold
- id: fast_a_threshold
  doc: '<ft> maximum FASTA score for sequence to be positive (requires --poslist pwm);
    default: 0.001'
  type: boolean
  inputBinding:
    prefix: --fasta-threshold
- id: fix_partition
  doc: <int> number of sequences in positive partition;
  type: boolean
  inputBinding:
    prefix: --fix-partition
- id: pos_list
  doc: '[fasta|pwm] partition on affinity (fasta) or motif (pwm) scores; default:
    fasta'
  type: boolean
  inputBinding:
    prefix: --poslist
- id: log_f_scores
  doc: use log of FASTA scores (pearson) or log of ranks (spearman)
  type: boolean
  inputBinding:
    prefix: --log-fscores
- id: log_pwm_scores
  doc: use log of log of PWM scores
  type: boolean
  inputBinding:
    prefix: --log-pwmscores
- id: lin_reg_switch_xy
  doc: switch roles of X=FASTA scores and Y=PWM scores
  type: boolean
  inputBinding:
    prefix: --linreg-switchxy
- id: x_alph
  doc: <alph file> motifs will be converted to this custom alphabet
  type: boolean
  inputBinding:
    prefix: --xalph
- id: b_file
  doc: '<bfile> background model file; default: motif file freqs default: unconstrained
    partition maximization'
  type: boolean
  inputBinding:
    prefix: --bfile
- id: motif_pseudo
  doc: '<pc> pseudocount for creating PWMs from motifs; default: 0.1'
  type: boolean
  inputBinding:
    prefix: --motif-pseudo
- id: inc
  doc: 'name pattern to select as motif; may be repeated; default: all motifs are
    used'
  type: string
  inputBinding:
    prefix: --inc
- id: exc
  doc: 'name pattern to exclude as motif; may be repeated; default: all motifs are
    used'
  type: string
  inputBinding:
    prefix: --exc
- id: verbose
  doc: '[1|2|3|4|5] controls program verbosity (5=maximum verbosity); default: 2'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- ame
