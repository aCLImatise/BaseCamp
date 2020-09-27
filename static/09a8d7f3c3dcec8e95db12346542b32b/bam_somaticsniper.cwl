class: CommandLineTool
id: bam_somaticsniper.cwl
inputs:
- id: in_required_reference_sequence
  doc: REQUIRED reference sequence in the FASTA format
  type: File
  inputBinding:
    prefix: -f
- id: in_display_version_information
  doc: Display version information
  type: boolean
  inputBinding:
    prefix: -v
- id: in_filtering_reads_mapping
  doc: filtering reads with mapping quality less than INT [0]
  type: long
  inputBinding:
    prefix: -q
- id: in_filtering_snv_output
  doc: filtering somatic snv output with somatic quality less than  INT [15]
  type: long
  inputBinding:
    prefix: -Q
- id: in_report_loh_variants
  doc: do not report LOH variants as determined by genotypes
  type: string
  inputBinding:
    prefix: -L
- id: in_report_gain_determined
  doc: do not report Gain of Reference variants as determined by genotypes
  type: string
  inputBinding:
    prefix: -G
- id: in_disable_priors_somatic
  doc: disable priors in the somatic calculation. Increases sensitivity for solid
    tumors
  type: string
  inputBinding:
    prefix: -p
- id: in_use_prior_probabilities
  doc: Use prior probabilities accounting for the somatic mutation rate
  type: string
  inputBinding:
    prefix: -J
- id: in_prior_probability_somatic
  doc: prior probability of a somatic mutation (implies -J) [0.010000]
  type: double
  inputBinding:
    prefix: -s
- id: in_theta_maq_consensus
  doc: theta in maq consensus calling model (for -c/-g) [0.850000]
  type: double
  inputBinding:
    prefix: -T
- id: in_number_haplotypes_sample
  doc: number of haplotypes in the sample (for -c/-g) [2]
  type: long
  inputBinding:
    prefix: -N
- id: in_prior_difference_two
  doc: prior of a difference between two haplotypes (for -c/-g) [0.001000]
  type: double
  inputBinding:
    prefix: -r
- id: in_normal_sample_i
  doc: normal sample id (for VCF header) [NORMAL]
  type: string
  inputBinding:
    prefix: -n
- id: in_tumor_sample_i
  doc: tumor sample id (for VCF header) [TUMOR]
  type: string
  inputBinding:
    prefix: -t
- id: in_select_output_format
  doc: "select output format [classic]\nAvailable formats:\nclassic\nvcf\nbed\n"
  type: string
  inputBinding:
    prefix: -F
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bam-somaticsniper
