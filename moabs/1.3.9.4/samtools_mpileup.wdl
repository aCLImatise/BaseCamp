version 1.0

task SamtoolsMpileup {
  input {
    Boolean? assume_quality_illumina
    Boolean? count_anomalous_pairs
    Boolean? disable_baq_computation
    File? list_input_bam
    Int? parameter_adjusting_disable
    Int? max_perbam_depth
    Boolean? recalculate_extended_baq
    File? faidx_indexed_file
    File? exclude_read_groups
    File? list_positions_bed
    Int? cap_mapping_quality
    String? region_pileup_generated
    Boolean? ignore_rg_tags
    Int? skip_alignments_mapq
    Int? skip_bases_baseqbaq
    Int? rf
    Int? ff
    Boolean? output_persample_dp
    Boolean? generate_bcf_likelihoods
    Boolean? output_base_positions
    Boolean? output_mapping_quality
    Boolean? output_persample_strand
    Boolean? generate_uncompress_bcf
    Int? phredscaled_gap_extension
    Float? minimum_fraction_gapped
    Int? coefficient_homopolymer_errors
    Boolean? perform_indel_calling
    Int? max_persample_depth
    Int? minimum_gapped_reads
    Int? phredscaled_gap_open
    Boolean? apply_m_persample
    String? comma_separated_list
    String in_one_dot_bam
  }
  command <<<
    samtools mpileup \
      ~{in_one_dot_bam} \
      ~{true="-6" false="" assume_quality_illumina} \
      ~{true="-A" false="" count_anomalous_pairs} \
      ~{true="-B" false="" disable_baq_computation} \
      ~{if defined(list_input_bam) then ("-b " +  '"' + list_input_bam + '"') else ""} \
      ~{if defined(parameter_adjusting_disable) then ("-C " +  '"' + parameter_adjusting_disable + '"') else ""} \
      ~{if defined(max_perbam_depth) then ("-d " +  '"' + max_perbam_depth + '"') else ""} \
      ~{true="-E" false="" recalculate_extended_baq} \
      ~{if defined(faidx_indexed_file) then ("-f " +  '"' + faidx_indexed_file + '"') else ""} \
      ~{if defined(exclude_read_groups) then ("-G " +  '"' + exclude_read_groups + '"') else ""} \
      ~{if defined(list_positions_bed) then ("-l " +  '"' + list_positions_bed + '"') else ""} \
      ~{if defined(cap_mapping_quality) then ("-M " +  '"' + cap_mapping_quality + '"') else ""} \
      ~{if defined(region_pileup_generated) then ("-r " +  '"' + region_pileup_generated + '"') else ""} \
      ~{true="-R" false="" ignore_rg_tags} \
      ~{if defined(skip_alignments_mapq) then ("-q " +  '"' + skip_alignments_mapq + '"') else ""} \
      ~{if defined(skip_bases_baseqbaq) then ("-Q " +  '"' + skip_bases_baseqbaq + '"') else ""} \
      ~{if defined(rf) then ("--rf " +  '"' + rf + '"') else ""} \
      ~{if defined(ff) then ("--ff " +  '"' + ff + '"') else ""} \
      ~{true="-D" false="" output_persample_dp} \
      ~{true="-g" false="" generate_bcf_likelihoods} \
      ~{true="-O" false="" output_base_positions} \
      ~{true="-s" false="" output_mapping_quality} \
      ~{true="-S" false="" output_persample_strand} \
      ~{true="-u" false="" generate_uncompress_bcf} \
      ~{if defined(phredscaled_gap_extension) then ("-e " +  '"' + phredscaled_gap_extension + '"') else ""} \
      ~{if defined(minimum_fraction_gapped) then ("-F " +  '"' + minimum_fraction_gapped + '"') else ""} \
      ~{if defined(coefficient_homopolymer_errors) then ("-h " +  '"' + coefficient_homopolymer_errors + '"') else ""} \
      ~{true="-I" false="" perform_indel_calling} \
      ~{if defined(max_persample_depth) then ("-L " +  '"' + max_persample_depth + '"') else ""} \
      ~{if defined(minimum_gapped_reads) then ("-m " +  '"' + minimum_gapped_reads + '"') else ""} \
      ~{if defined(phredscaled_gap_open) then ("-o " +  '"' + phredscaled_gap_open + '"') else ""} \
      ~{true="-p" false="" apply_m_persample} \
      ~{if defined(comma_separated_list) then ("-P " +  '"' + comma_separated_list + '"') else ""}
  >>>
  parameter_meta {
    assume_quality_illumina: "assume the quality is in the Illumina-1.3+ encoding"
    count_anomalous_pairs: "count anomalous read pairs"
    disable_baq_computation: "disable BAQ computation"
    list_input_bam: "list of input BAM filenames, one per line [null]"
    parameter_adjusting_disable: "parameter for adjusting mapQ; 0 to disable [0]"
    max_perbam_depth: "max per-BAM depth to avoid excessive memory usage [250]"
    recalculate_extended_baq: "recalculate extended BAQ on the fly thus ignoring existing BQs"
    faidx_indexed_file: "faidx indexed reference sequence file [null]"
    exclude_read_groups: "exclude read groups listed in FILE [null]"
    list_positions_bed: "list of positions (chr pos) or regions (BED) [null]"
    cap_mapping_quality: "cap mapping quality at INT [60]"
    region_pileup_generated: "region in which pileup is generated [null]"
    ignore_rg_tags: "ignore RG tags"
    skip_alignments_mapq: "skip alignments with mapQ smaller than INT [0]"
    skip_bases_baseqbaq: "skip bases with baseQ/BAQ smaller than INT [13]"
    rf: "required flags: skip reads with mask bits unset []"
    ff: "filter flags: skip reads with mask bits set []"
    output_persample_dp: "output per-sample DP in BCF (require -g/-u)"
    generate_bcf_likelihoods: "generate BCF output (genotype likelihoods)"
    output_base_positions: "output base positions on reads (disabled by -g/-u)"
    output_mapping_quality: "output mapping quality (disabled by -g/-u)"
    output_persample_strand: "output per-sample strand bias P-value in BCF (require -g/-u)"
    generate_uncompress_bcf: "generate uncompress BCF output"
    phredscaled_gap_extension: "Phred-scaled gap extension seq error probability [20]"
    minimum_fraction_gapped: "minimum fraction of gapped reads for candidates [0.002]"
    coefficient_homopolymer_errors: "coefficient for homopolymer errors [100]"
    perform_indel_calling: "do not perform indel calling"
    max_persample_depth: "max per-sample depth for INDEL calling [250]"
    minimum_gapped_reads: "minimum gapped reads for indel candidates [1]"
    phredscaled_gap_open: "Phred-scaled gap open sequencing error probability [40]"
    apply_m_persample: "apply -m and -F per-sample to increase sensitivity"
    comma_separated_list: "comma separated list of platforms for indels [all]"
    in_one_dot_bam: ""
  }
}