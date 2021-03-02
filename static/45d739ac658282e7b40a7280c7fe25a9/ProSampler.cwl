class: CommandLineTool
id: ProSampler.cwl
inputs:
- id: in_name_input_file
  doc: ': Name of the input file in FASTA format'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_name_generate_sequences
  doc: ': Name of the background file in FASTA format or order of the Markov model
    to generate background sequences (default: 3; 3rd order Markov model)'
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_cutoff_hamming_distance
  doc: ': The cutoff of Hamming Distance between any two k-mers in a PWM (default:
    1)'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_prefix_names_output
  doc: ': Prefix of the names of output files'
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_number_motifs_be
  doc: ': Number of motifs to be output (default: All)'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_number_cycles_gibbs
  doc: ': Number of cycles of Gibbs Sampling to find  each preliminary motif (default:
    100)'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_length_preliminary_motifs
  doc: ': Length of preliminary motifs (default: 8)'
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_length_flanking_lmers
  doc: ': Length of the flanking l-mers (default: 6)'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_merge_similar_kmers
  doc: ': Cutoff of Hamming distance to merge similar k-mers (default: 1)'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_cutoff_hamming_delete
  doc: ': Cutoff of Hamming distance to delete redundant motifs basedn on consensus
    (default: 1)'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_number_strands_be
  doc: ': Number(1 or 2) of strands to be considered(default: 2)'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_cutoff_zvalue_significant
  doc: ': Cutoff of z-value to choose significant k-mers (default: 8.00)'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_cutoff_zvalue_subsignificant
  doc: ': Cutoff of z-value to choose sub-significant k-mers (default: 4.50)'
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_cutoff_extend_motifsdefault
  doc: ': Cutoff of z-value to extend preliniary motifs(default: 1.96)'
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_cutoff_sw_score
  doc: ': Cutoff of SW score to construct graph (default: 1.80)'
  type: boolean?
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ProSampler
