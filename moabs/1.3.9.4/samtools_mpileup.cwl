class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/samtools_mpileup.cwl
inputs:
- id: assume_quality_illumina
  doc: assume the quality is in the Illumina-1.3+ encoding
  type: boolean
  inputBinding:
    prefix: '-6'
- id: count_anomalous_pairs
  doc: count anomalous read pairs
  type: boolean
  inputBinding:
    prefix: -A
- id: disable_baq_computation
  doc: disable BAQ computation
  type: boolean
  inputBinding:
    prefix: -B
- id: list_input_bam
  doc: list of input BAM filenames, one per line [null]
  type: File
  inputBinding:
    prefix: -b
- id: parameter_adjusting_disable
  doc: parameter for adjusting mapQ; 0 to disable [0]
  type: long
  inputBinding:
    prefix: -C
- id: max_perbam_depth
  doc: max per-BAM depth to avoid excessive memory usage [250]
  type: long
  inputBinding:
    prefix: -d
- id: recalculate_extended_baq
  doc: recalculate extended BAQ on the fly thus ignoring existing BQs
  type: boolean
  inputBinding:
    prefix: -E
- id: faidx_indexed_file
  doc: faidx indexed reference sequence file [null]
  type: File
  inputBinding:
    prefix: -f
- id: exclude_read_groups
  doc: exclude read groups listed in FILE [null]
  type: File
  inputBinding:
    prefix: -G
- id: list_positions_bed
  doc: list of positions (chr pos) or regions (BED) [null]
  type: File
  inputBinding:
    prefix: -l
- id: cap_mapping_quality
  doc: cap mapping quality at INT [60]
  type: long
  inputBinding:
    prefix: -M
- id: region_pileup_generated
  doc: region in which pileup is generated [null]
  type: string
  inputBinding:
    prefix: -r
- id: ignore_rg_tags
  doc: ignore RG tags
  type: boolean
  inputBinding:
    prefix: -R
- id: skip_alignments_mapq
  doc: skip alignments with mapQ smaller than INT [0]
  type: long
  inputBinding:
    prefix: -q
- id: skip_bases_baseqbaq
  doc: skip bases with baseQ/BAQ smaller than INT [13]
  type: long
  inputBinding:
    prefix: -Q
- id: rf
  doc: 'required flags: skip reads with mask bits unset []'
  type: long
  inputBinding:
    prefix: --rf
- id: ff
  doc: 'filter flags: skip reads with mask bits set []'
  type: long
  inputBinding:
    prefix: --ff
- id: output_persample_dp
  doc: output per-sample DP in BCF (require -g/-u)
  type: boolean
  inputBinding:
    prefix: -D
- id: generate_bcf_likelihoods
  doc: generate BCF output (genotype likelihoods)
  type: boolean
  inputBinding:
    prefix: -g
- id: output_base_positions
  doc: output base positions on reads (disabled by -g/-u)
  type: boolean
  inputBinding:
    prefix: -O
- id: output_mapping_quality
  doc: output mapping quality (disabled by -g/-u)
  type: boolean
  inputBinding:
    prefix: -s
- id: output_persample_strand
  doc: output per-sample strand bias P-value in BCF (require -g/-u)
  type: boolean
  inputBinding:
    prefix: -S
- id: generate_uncompress_bcf
  doc: generate uncompress BCF output
  type: boolean
  inputBinding:
    prefix: -u
- id: phredscaled_gap_extension
  doc: Phred-scaled gap extension seq error probability [20]
  type: long
  inputBinding:
    prefix: -e
- id: minimum_fraction_gapped
  doc: minimum fraction of gapped reads for candidates [0.002]
  type: double
  inputBinding:
    prefix: -F
- id: coefficient_homopolymer_errors
  doc: coefficient for homopolymer errors [100]
  type: long
  inputBinding:
    prefix: -h
- id: perform_indel_calling
  doc: do not perform indel calling
  type: boolean
  inputBinding:
    prefix: -I
- id: max_persample_depth
  doc: max per-sample depth for INDEL calling [250]
  type: long
  inputBinding:
    prefix: -L
- id: minimum_gapped_reads
  doc: minimum gapped reads for indel candidates [1]
  type: long
  inputBinding:
    prefix: -m
- id: phredscaled_gap_open
  doc: Phred-scaled gap open sequencing error probability [40]
  type: long
  inputBinding:
    prefix: -o
- id: apply_m_persample
  doc: apply -m and -F per-sample to increase sensitivity
  type: boolean
  inputBinding:
    prefix: -p
- id: comma_separated_list
  doc: comma separated list of platforms for indels [all]
  type: string
  inputBinding:
    prefix: -P
- id: in_one_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- samtools
- mpileup
