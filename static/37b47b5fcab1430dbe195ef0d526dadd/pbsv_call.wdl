version 1.0

task PbsvCall {
  input {
    Boolean? chunk_length
    Boolean? region
    Boolean? types
    Boolean? min_sv_length
    Boolean? min_cnv_length
    Boolean? max_ins_length
    Boolean? max_dup_length
    Boolean? cluster_max_length_perc_diff
    Boolean? cluster_max_ref_pos_diff
    Boolean? cluster_min_base_pair_perc_id
    Boolean? max_consensus_coverage
    Boolean? poa_scores
    Boolean? min_realign_length
    Boolean? call_min_reads_all_samples
    Boolean? call_min_reads_one_sample
    Boolean? call_min_reads_per_strand_all_samples
    Boolean? call_min_bnd_reads_all_samples
    Boolean? call_min_read_perc_one_sample
    Boolean? ccs
    Boolean? gt_min_reads
    Boolean? annotations
    Boolean? annotation_min_perc_sim
    Boolean? min_n_in_gap
    Boolean? filter_near_reference_gap
    Boolean? filter_near_contig_end
    Boolean? num_threads
    Boolean? log_level
    Boolean? log_file
    String ref_dot_out_dot_vcf
  }
  command <<<
    pbsv call \
      ~{ref_dot_out_dot_vcf} \
      ~{true="--chunk-length" false="" chunk_length} \
      ~{true="--region" false="" region} \
      ~{true="--types" false="" types} \
      ~{true="--min-sv-length" false="" min_sv_length} \
      ~{true="--min-cnv-length" false="" min_cnv_length} \
      ~{true="--max-ins-length" false="" max_ins_length} \
      ~{true="--max-dup-length" false="" max_dup_length} \
      ~{true="--cluster-max-length-perc-diff" false="" cluster_max_length_perc_diff} \
      ~{true="--cluster-max-ref-pos-diff" false="" cluster_max_ref_pos_diff} \
      ~{true="--cluster-min-basepair-perc-id" false="" cluster_min_base_pair_perc_id} \
      ~{true="--max-consensus-coverage" false="" max_consensus_coverage} \
      ~{true="--poa-scores" false="" poa_scores} \
      ~{true="--min-realign-length" false="" min_realign_length} \
      ~{true="--call-min-reads-all-samples" false="" call_min_reads_all_samples} \
      ~{true="--call-min-reads-one-sample" false="" call_min_reads_one_sample} \
      ~{true="--call-min-reads-per-strand-all-samples" false="" call_min_reads_per_strand_all_samples} \
      ~{true="--call-min-bnd-reads-all-samples" false="" call_min_bnd_reads_all_samples} \
      ~{true="--call-min-read-perc-one-sample" false="" call_min_read_perc_one_sample} \
      ~{true="--ccs" false="" ccs} \
      ~{true="--gt-min-reads" false="" gt_min_reads} \
      ~{true="--annotations" false="" annotations} \
      ~{true="--annotation-min-perc-sim" false="" annotation_min_perc_sim} \
      ~{true="--min-N-in-gap" false="" min_n_in_gap} \
      ~{true="--filter-near-reference-gap" false="" filter_near_reference_gap} \
      ~{true="--filter-near-contig-end" false="" filter_near_contig_end} \
      ~{true="--num-threads" false="" num_threads} \
      ~{true="--log-level" false="" log_level} \
      ~{true="--log-file" false="" log_file}
  >>>
  parameter_meta {
    chunk_length: "STR   Process in chunks of N reference bp. [1M]"
    region: "STR   Limit discovery to this reference region: CHR|CHR:START-END."
    types: "STR   Call these SV types: \"DEL\", \"INS\", \"INV\", \"DUP\", \"BND\", \"CNV\". [DEL,INS,INV,DUP,BND,CNV]"
    min_sv_length: "STR   Ignore variants with length < N bp. [20]"
    min_cnv_length: "STR   Ignore CNVs with length < N bp. [1K]"
    max_ins_length: "STR   Ignore insertions with length > N bp. [10K]"
    max_dup_length: "STR   Ignore duplications with length > N bp. [100K]"
    cluster_max_length_perc_diff: "INT   Do not cluster signatures with difference in length > P%. [25]"
    cluster_max_ref_pos_diff: "STR   Do not cluster signatures > N bp apart in reference. [200]"
    cluster_min_base_pair_perc_id: "INT   Do not cluster signatures with basepair identity < P%. [10]"
    max_consensus_coverage: "INT   Limit to N reads for variant consensus. [20]"
    poa_scores: "STR   Score POA alignment with triplet match,mismatch,gap. [1,-2,-2]"
    min_realign_length: "STR   Consider segments with > N length for re-alignment. [100]"
    call_min_reads_all_samples: "INT   Ignore calls supported by < N reads total across samples. [2]"
    call_min_reads_one_sample: "INT   Ignore calls supported by < N reads in every sample. [2]"
    call_min_reads_per_strand_all_samples: "INT   Ignore calls supported by < N reads per strand total across samples [1]"
    call_min_bnd_reads_all_samples: "INT   Ignore BND calls supported by < N reads total across samples [2]"
    call_min_read_perc_one_sample: "INT   Ignore calls supported by < P% of reads in every sample. [20]"
    ccs: "CCS optimized parameters: -A 1 -O 1 -S 0 -P 10."
    gt_min_reads: "INT   Minimum supporting reads to assign a sample a non-reference genotype. [1]"
    annotations: "FILE  Annotate variants by comparing with sequences in fasta.Default annotations are ALU, L1, SVA."
    annotation_min_perc_sim: "INT   Annotate variant if sequence similarity > P%. [60]"
    min_n_in_gap: "STR   Consider >= N consecutive \"N\" bp as a reference gap. [50]"
    filter_near_reference_gap: "STR   Flag variants < N bp from a gap as \"NearReferenceGap\". [1K]"
    filter_near_contig_end: "STR   Flag variants < N bp from a contig end as \"NearContigEnd\". [1K]"
    num_threads: "INT   Number of threads to use, 0 means autodetection. [0]"
    log_level: "STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]"
    log_file: "FILE  Log to a file, instead of stderr."
    ref_dot_out_dot_vcf: "STR   Variant call format (VCF) output."
  }
}