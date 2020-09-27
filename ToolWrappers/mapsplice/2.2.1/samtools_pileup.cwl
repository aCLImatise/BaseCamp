class: CommandLineTool
id: samtools_pileup.cwl
inputs:
- id: in_simple_incomplete_pileup
  doc: simple (yet incomplete) pileup format
  type: boolean
  inputBinding:
    prefix: -s
- id: in_the_input_sam
  doc: the input is in SAM
  type: boolean
  inputBinding:
    prefix: -S
- id: in_disable_baq_computation
  doc: disable BAQ computation
  type: boolean
  inputBinding:
    prefix: -B
- id: in_use_original_model
  doc: use the original MAQ model for SNP calling (DEPRECATED)
  type: boolean
  inputBinding:
    prefix: -A
- id: in_output_nd_call
  doc: output the 2nd best call and quality
  type: boolean
  inputBinding:
    prefix: '-2'
- id: in_only_show_linesconsensus
  doc: only show lines/consensus with indels
  type: boolean
  inputBinding:
    prefix: -i
- id: in_min_base_quality
  doc: min base quality (possibly capped by BAQ) [13]
  type: long
  inputBinding:
    prefix: -Q
- id: in_coefficient_adjusting_mapq
  doc: coefficient for adjusting mapQ of poor mappings [0]
  type: long
  inputBinding:
    prefix: -C
- id: in_filtering_reads_bits
  doc: filtering reads with bits in INT [0x704]
  type: long
  inputBinding:
    prefix: -m
- id: in_cap_mapping_quality
  doc: cap mapping quality at INT [60]
  type: long
  inputBinding:
    prefix: -M
- id: in_limit_maximum_depth
  doc: limit maximum depth for indels [1024]
  type: long
  inputBinding:
    prefix: -d
- id: in_list_reference_sequences
  doc: list of reference sequences (force -S)
  type: File
  inputBinding:
    prefix: -t
- id: in_list_sites_pileup
  doc: list of sites at which pileup is output
  type: File
  inputBinding:
    prefix: -l
- id: in_reference_sequence_fasta
  doc: reference sequence in the FASTA format
  type: File
  inputBinding:
    prefix: -f
- id: in_compute_consensus_sequence
  doc: compute the consensus sequence
  type: boolean
  inputBinding:
    prefix: -c
- id: in_print_variants_only
  doc: print variants only (for -c)
  type: boolean
  inputBinding:
    prefix: -v
- id: in_output_glfv_format
  doc: output in the GLFv3 format (DEPRECATED)
  type: boolean
  inputBinding:
    prefix: -g
- id: in_theta_maq_consensus
  doc: theta in maq consensus calling model (for -c) [0.83]
  type: double
  inputBinding:
    prefix: -T
- id: in_number_haplotypes_sample
  doc: number of haplotypes in the sample (for -c) [2]
  type: long
  inputBinding:
    prefix: -N
- id: in_prior_difference_two
  doc: prior of a difference between two haplotypes (for -c) [0.001]
  type: double
  inputBinding:
    prefix: -r
- id: in_prior_indel_two
  doc: prior of an indel between two haplotypes (for -c) [0.00015]
  type: double
  inputBinding:
    prefix: -G
- id: in_phred_prob_indel
  doc: phred prob. of an indel in sequencing/prep. (for -c) [40]
  type: long
  inputBinding:
    prefix: -I
- id: in_in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- samtools
- pileup
