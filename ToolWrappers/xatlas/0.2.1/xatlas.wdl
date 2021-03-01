version 1.0

task Xatlas {
  input {
    String? ref
    File? in
    File? sample_name
    File? prefix
    Boolean? multithread
    Int? num_hts_threads
    File? capture_bed
    Boolean? min_p_value
    Int? min_snp_mapq
    Int? min_in_del_mapq
    Int? max_coverage
    String? block_abs_lim
    String? block_rel_lim
    File? gvc_f
    Boolean? bg_zf
    File? snp_log_it_params
    File? in_del_log_it_params
    Boolean? enable_strand_filter
  }
  command <<<
    xatlas \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(sample_name) then ("--sample-name " +  '"' + sample_name + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (multithread) then "--multithread" else ""} \
      ~{if defined(num_hts_threads) then ("--num-hts-threads " +  '"' + num_hts_threads + '"') else ""} \
      ~{if defined(capture_bed) then ("--capture-bed " +  '"' + capture_bed + '"') else ""} \
      ~{if (min_p_value) then "--min-p-value" else ""} \
      ~{if defined(min_snp_mapq) then ("--min-snp-mapq " +  '"' + min_snp_mapq + '"') else ""} \
      ~{if defined(min_in_del_mapq) then ("--min-indel-mapq " +  '"' + min_in_del_mapq + '"') else ""} \
      ~{if defined(max_coverage) then ("--max-coverage " +  '"' + max_coverage + '"') else ""} \
      ~{if defined(block_abs_lim) then ("--block-abs-lim " +  '"' + block_abs_lim + '"') else ""} \
      ~{if defined(block_rel_lim) then ("--block-rel-lim " +  '"' + block_rel_lim + '"') else ""} \
      ~{if (gvc_f) then "--gvcf" else ""} \
      ~{if (bg_zf) then "--bgzf" else ""} \
      ~{if defined(snp_log_it_params) then ("--snp-logit-params " +  '"' + snp_log_it_params + '"') else ""} \
      ~{if defined(in_del_log_it_params) then ("--indel-logit-params " +  '"' + in_del_log_it_params + '"') else ""} \
      ~{if (enable_strand_filter) then "--enable-strand-filter" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ref: "Reference genome in FASTA format"
    in: "Sorted and indexed input BAM or CRAM file"
    sample_name: "Sample name to use in the output VCF file"
    prefix: "Output VCF file prefix"
    multithread: "Read alignment file and process records in separate threads"
    num_hts_threads: "Number of HTSlib decompression threads to spawn"
    capture_bed: "BED file of regions to process"
    min_p_value: "Minimum logit P-value to report variants"
    min_snp_mapq: "Minimum read mapping quality for calling SNPs"
    min_in_del_mapq: "Minimum read mapping quality for calling indels"
    max_coverage: "Maximum coverage for calling variants normally"
    block_abs_lim: "gVCF non-variant block absolute range limit"
    block_rel_lim: "gVCF non-variant block relative range limit coefficient"
    gvc_f: "Include non-variant gVCF blocks in output VCF file"
    bg_zf: "Write output in bgzip-compressed VCF format"
    snp_log_it_params: "File with intercept and coefficients for SNP logit model"
    in_del_log_it_params: "File with intercept and coefficients for indel logit model"
    enable_strand_filter: "Enable SNP filter for single-strandedness"
  }
  output {
    File out_stdout = stdout()
    File out_sample_name = "${in_sample_name}"
    File out_prefix = "${in_prefix}"
    File out_gvc_f = "${in_gvc_f}"
  }
}