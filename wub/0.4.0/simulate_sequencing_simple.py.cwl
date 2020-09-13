class: CommandLineTool
id: ../../../simulate_sequencing_simple.py.cwl
inputs:
- id: in_number_simulated_reads
  doc: Number of simulated reads (1).
  type: long
  inputBinding:
    prefix: -n
- id: in_mean_read_length
  doc: Mean read length (5000).
  type: long
  inputBinding:
    prefix: -m
- id: in_read_gamma_parameter
  doc: 'Read length distribution: gamma shape parameter (1).'
  type: long
  inputBinding:
    prefix: -a
- id: in_read_length_distribution_point
  doc: 'Read length distribution: lower truncation point (100).'
  type: long
  inputBinding:
    prefix: -l
- id: in_read_length_distribution_upper
  doc: 'Read length distribution: upper truncation point (None).'
  type: long
  inputBinding:
    prefix: -u
- id: in_total_rate_substitutions
  doc: "Total rate of substitutions insertions and deletions\n(0.1)."
  type: double
  inputBinding:
    prefix: -e
- id: in_relative_frequency_substitutionsinsertionsdeletions
  doc: "Relative frequency of substitutions,insertions,deletions\n(1,1,4)."
  type: long
  inputBinding:
    prefix: -w
- id: in_strand_bias_ratio
  doc: 'Strand bias: the ratio of forward and reverse reads (0.5).'
  type: double
  inputBinding:
    prefix: -b
- id: in_mock_base_quality
  doc: Mock base quality for fastq output (40).
  type: long
  inputBinding:
    prefix: -q
- id: in_save_true_alignments
  doc: Save true alignments in this SAM file (None).
  type: File
  inputBinding:
    prefix: -s
- id: in_quiet_print_false
  doc: Be quiet and do not print progress bar (False).
  type: boolean
  inputBinding:
    prefix: -Q
- id: in_random_seed_none
  doc: Random seed (None).
  type: string
  inputBinding:
    prefix: -z
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- simulate_sequencing_simple.py
