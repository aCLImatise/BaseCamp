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
    Int? preserve_non_acgt
    Boolean? gt_min_reads
    Boolean? annotations
    Boolean? annotation_min_perc_sim
    Boolean? min_n_in_gap
    Boolean? filter_near_reference_gap
    Boolean? filter_near_contig_end
    Boolean? num_threads
    Boolean? log_level
    Boolean? log_file
    String variants_dot
    String ref_dot_out_dot_vcf
    String output_dot
  }
  command <<<
    pbsv call \
      ~{variants_dot} \
      ~{ref_dot_out_dot_vcf} \
      ~{output_dot} \
      ~{if (chunk_length) then "--chunk-length" else ""} \
      ~{if (region) then "--region" else ""} \
      ~{if (types) then "--types" else ""} \
      ~{if (min_sv_length) then "--min-sv-length" else ""} \
      ~{if (min_cnv_length) then "--min-cnv-length" else ""} \
      ~{if (max_ins_length) then "--max-ins-length" else ""} \
      ~{if (max_dup_length) then "--max-dup-length" else ""} \
      ~{if (cluster_max_length_perc_diff) then "--cluster-max-length-perc-diff" else ""} \
      ~{if (cluster_max_ref_pos_diff) then "--cluster-max-ref-pos-diff" else ""} \
      ~{if (cluster_min_base_pair_perc_id) then "--cluster-min-basepair-perc-id" else ""} \
      ~{if (max_consensus_coverage) then "--max-consensus-coverage" else ""} \
      ~{if (poa_scores) then "--poa-scores" else ""} \
      ~{if (min_realign_length) then "--min-realign-length" else ""} \
      ~{if (call_min_reads_all_samples) then "--call-min-reads-all-samples" else ""} \
      ~{if (call_min_reads_one_sample) then "--call-min-reads-one-sample" else ""} \
      ~{if (call_min_reads_per_strand_all_samples) then "--call-min-reads-per-strand-all-samples" else ""} \
      ~{if (call_min_bnd_reads_all_samples) then "--call-min-bnd-reads-all-samples" else ""} \
      ~{if (call_min_read_perc_one_sample) then "--call-min-read-perc-one-sample" else ""} \
      ~{if (ccs) then "--ccs" else ""} \
      ~{if defined(preserve_non_acgt) then ("--preserve-non-acgt " +  '"' + preserve_non_acgt + '"') else ""} \
      ~{if (gt_min_reads) then "--gt-min-reads" else ""} \
      ~{if (annotations) then "--annotations" else ""} \
      ~{if (annotation_min_perc_sim) then "--annotation-min-perc-sim" else ""} \
      ~{if (min_n_in_gap) then "--min-N-in-gap" else ""} \
      ~{if (filter_near_reference_gap) then "--filter-near-reference-gap" else ""} \
      ~{if (filter_near_contig_end) then "--filter-near-contig-end" else ""} \
      ~{if (num_threads) then "--num-threads" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_file) then "--log-file" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pbsv:2.4.1--0"
  }
  parameter_meta {
    chunk_length: "STR   Process in chunks of N\\nreference bp. [1M]"
    region: "STR   Limit discovery to this\\nreference region:\\nCHR|CHR:START-END."
    types: "STR   Call these SV types: \\\"DEL\\\",\\n\\\"INS\\\", \\\"INV\\\", \\\"DUP\\\", \\\"BND\\\",\\n\\\"CNV\\\".\\n[DEL,INS,INV,DUP,BND,CNV]"
    min_sv_length: "STR   Ignore variants with length\\n< N bp. [20]"
    min_cnv_length: "STR   Ignore CNVs with length < N\\nbp. [1K]"
    max_ins_length: "STR   Ignore insertions with\\nlength > N bp. [15K]"
    max_dup_length: "STR   Ignore duplications with\\nlength > N bp. [100K]"
    cluster_max_length_perc_diff: "INT   Do not cluster signatures\\nwith difference in length >\\nP%. [25]"
    cluster_max_ref_pos_diff: "STR   Do not cluster signatures >\\nN bp apart in reference.\\n[200]"
    cluster_min_base_pair_perc_id: "INT   Do not cluster signatures\\nwith basepair identity <\\nP%. [10]"
    max_consensus_coverage: "INT   Limit to N reads for\\nvariant consensus. [20]"
    poa_scores: "STR   Score POA alignment with\\ntriplet match,mismatch,gap.\\n[1,-2,-2]"
    min_realign_length: "STR   Consider segments with > N\\nlength for re-alignment.\\n[100]"
    call_min_reads_all_samples: "INT   Ignore calls supported by <\\nN reads total across\\nsamples. [2]"
    call_min_reads_one_sample: "INT   Ignore calls supported by <\\nN reads in every sample.\\n[2]"
    call_min_reads_per_strand_all_samples: "INT   Ignore calls supported by <\\nN reads per strand total\\nacross samples [1]"
    call_min_bnd_reads_all_samples: "INT   Ignore BND calls supported\\nby < N reads total across\\nsamples [2]"
    call_min_read_perc_one_sample: "INT   Ignore calls supported by <\\nP% of reads in every\\nsample. [20]"
    ccs: "CCS optimized parameters:"
    preserve_non_acgt: "Preserve non-ACGT in REF"
    gt_min_reads: "INT   Minimum supporting reads to\\nassign a sample a\\nnon-reference genotype. [1]"
    annotations: "FILE  Annotate variants by\\ncomparing with sequences in\\nfasta.Default annotations\\nare ALU, L1, SVA."
    annotation_min_perc_sim: "INT   Annotate variant if\\nsequence similarity > P%.\\n[60]"
    min_n_in_gap: "STR   Consider >= N consecutive\\n\\\"N\\\" bp as a reference gap.\\n[50]"
    filter_near_reference_gap: "STR   Flag variants < N bp from a\\ngap as \\\"NearReferenceGap\\\".\\n[1K]"
    filter_near_contig_end: "STR   Flag variants < N bp from a\\ncontig end as\\n\\\"NearContigEnd\\\". [1K]"
    num_threads: "INT   Number of threads to use, 0\\nmeans autodetection. [0]"
    log_level: "STR   Set log level. Valid\\nchoices: (TRACE, DEBUG,\\nINFO, WARN, FATAL). [WARN]"
    log_file: "FILE  Log to a file, instead of\\nstderr.\\n"
    variants_dot: "ref.in.svsig.gz|fofn                        STR   SV signatures from one or"
    ref_dot_out_dot_vcf: "STR   Variant call format (VCF)"
    output_dot: "Basic Options:"
  }
  output {
    File out_stdout = stdout()
  }
}