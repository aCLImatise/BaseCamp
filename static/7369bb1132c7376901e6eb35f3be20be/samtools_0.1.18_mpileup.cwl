class: CommandLineTool
id: samtools_0.1.18_mpileup.cwl
inputs:
- id: in_assume_quality_illumina
  doc: assume the quality is in the Illumina-1.3+ encoding
  type: boolean
  inputBinding:
    prefix: '-6'
- id: in_count_anomalous_read
  doc: count anomalous read pairs
  type: boolean
  inputBinding:
    prefix: -A
- id: in_disable_baq_computation
  doc: disable BAQ computation
  type: boolean
  inputBinding:
    prefix: -B
- id: in_list_input_bam
  doc: list of input BAM files [null]
  type: File
  inputBinding:
    prefix: -b
- id: in_parameter_adjusting_mapq
  doc: parameter for adjusting mapQ; 0 to disable [0]
  type: long
  inputBinding:
    prefix: -C
- id: in_max_perbam_depth
  doc: max per-BAM depth to avoid excessive memory usage [250]
  type: long
  inputBinding:
    prefix: -d
- id: in_extended_baq_higher
  doc: extended BAQ for higher sensitivity but lower specificity
  type: boolean
  inputBinding:
    prefix: -E
- id: in_faidx_indexed_reference
  doc: faidx indexed reference sequence file [null]
  type: File
  inputBinding:
    prefix: -f
- id: in_exclude_read_groups
  doc: exclude read groups listed in FILE [null]
  type: File
  inputBinding:
    prefix: -G
- id: in_list_positions_chr
  doc: list of positions (chr pos) or regions (BED) [null]
  type: File
  inputBinding:
    prefix: -l
- id: in_cap_mapping_quality
  doc: cap mapping quality at INT [60]
  type: long
  inputBinding:
    prefix: -M
- id: in_region_pileup_generated
  doc: region in which pileup is generated [null]
  type: string
  inputBinding:
    prefix: -r
- id: in_ignore_rg_tags
  doc: ignore RG tags
  type: boolean
  inputBinding:
    prefix: -R
- id: in_skip_alignments_mapq
  doc: skip alignments with mapQ smaller than INT [0]
  type: long
  inputBinding:
    prefix: -q
- id: in_skip_bases_baseqbaq
  doc: skip bases with baseQ/BAQ smaller than INT [13]
  type: long
  inputBinding:
    prefix: -Q
- id: in_output_persample_dp
  doc: output per-sample DP in BCF (require -g/-u)
  type: boolean
  inputBinding:
    prefix: -D
- id: in_generate_bcf_likelihoods
  doc: generate BCF output (genotype likelihoods)
  type: boolean
  inputBinding:
    prefix: -g
- id: in_output_base_positions
  doc: output base positions on reads (disabled by -g/-u)
  type: boolean
  inputBinding:
    prefix: -O
- id: in_output_mapping_quality
  doc: output mapping quality (disabled by -g/-u)
  type: boolean
  inputBinding:
    prefix: -s
- id: in_output_persample_strand
  doc: output per-sample strand bias P-value in BCF (require -g/-u)
  type: boolean
  inputBinding:
    prefix: -S
- id: in_generate_uncompress_bcf
  doc: generate uncompress BCF output
  type: boolean
  inputBinding:
    prefix: -u
- id: in_phredscaled_gap_extension
  doc: Phred-scaled gap extension seq error probability [20]
  type: long
  inputBinding:
    prefix: -e
- id: in_minimum_fraction_gapped
  doc: minimum fraction of gapped reads for candidates [0.002]
  type: double
  inputBinding:
    prefix: -F
- id: in_coefficient_homopolymer_errors
  doc: coefficient for homopolymer errors [100]
  type: long
  inputBinding:
    prefix: -h
- id: in_perform_indel_calling
  doc: do not perform indel calling
  type: boolean
  inputBinding:
    prefix: -I
- id: in_max_persample_depth
  doc: max per-sample depth for INDEL calling [250]
  type: long
  inputBinding:
    prefix: -L
- id: in_minimum_gapped_reads
  doc: minimum gapped reads for indel candidates [1]
  type: long
  inputBinding:
    prefix: -m
- id: in_phredscaled_gap_open
  doc: Phred-scaled gap open sequencing error probability [40]
  type: long
  inputBinding:
    prefix: -o
- id: in_comma_separated_list
  doc: comma separated list of platforms for indels [all]
  type: string
  inputBinding:
    prefix: -P
- id: in_sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_m_pile_up
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_one_dot_bam
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- samtools_0.1.18
- mpileup
