version 1.0

task LofreqCall {
  input {
    File? ref
    File? out
    String? region
    File? bed
    Int? min_bq
    Int? min_alt_bq
    Int? def_alt_bq
    Int? min_jq
    Int? min_alt_jq
    Int? def_alt_jq
    Boolean? no_baq
    Boolean? no_i_daq
    Boolean? del_baq
    Boolean? no_ext_baq
    Int? min_mq
    Int? max_mq
    Boolean? no_mq
    Boolean? call_indels
    Boolean? only_indels
    Boolean? src_qual
    File? ign_vcf
    Int? def_nm_q
    Boolean? sig
    Boolean? bon_f
    Int? min_cov
    Int? max_depth
    Boolean? illumina_one_dot_three
    Boolean? use_orphan
    Boolean? plp_summary_only
    Boolean? no_default_filter
    Boolean? force_overwrite
    Boolean? verbose
    Boolean? debug
    String in_dot_bam
  }
  command <<<
    lofreq call \
      ~{in_dot_bam} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(min_bq) then ("--min-bq " +  '"' + min_bq + '"') else ""} \
      ~{if defined(min_alt_bq) then ("--min-alt-bq " +  '"' + min_alt_bq + '"') else ""} \
      ~{if defined(def_alt_bq) then ("--def-alt-bq " +  '"' + def_alt_bq + '"') else ""} \
      ~{if defined(min_jq) then ("--min-jq " +  '"' + min_jq + '"') else ""} \
      ~{if defined(min_alt_jq) then ("--min-alt-jq " +  '"' + min_alt_jq + '"') else ""} \
      ~{if defined(def_alt_jq) then ("--def-alt-jq " +  '"' + def_alt_jq + '"') else ""} \
      ~{if (no_baq) then "--no-baq" else ""} \
      ~{if (no_i_daq) then "--no-idaq" else ""} \
      ~{if (del_baq) then "--del-baq" else ""} \
      ~{if (no_ext_baq) then "--no-ext-baq" else ""} \
      ~{if defined(min_mq) then ("--min-mq " +  '"' + min_mq + '"') else ""} \
      ~{if defined(max_mq) then ("--max-mq " +  '"' + max_mq + '"') else ""} \
      ~{if (no_mq) then "--no-mq" else ""} \
      ~{if (call_indels) then "--call-indels" else ""} \
      ~{if (only_indels) then "--only-indels" else ""} \
      ~{if (src_qual) then "--src-qual" else ""} \
      ~{if defined(ign_vcf) then ("--ign-vcf " +  '"' + ign_vcf + '"') else ""} \
      ~{if defined(def_nm_q) then ("--def-nm-q " +  '"' + def_nm_q + '"') else ""} \
      ~{if (sig) then "--sig" else ""} \
      ~{if (bon_f) then "--bonf" else ""} \
      ~{if defined(min_cov) then ("--min-cov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(max_depth) then ("--max-depth " +  '"' + max_depth + '"') else ""} \
      ~{if (illumina_one_dot_three) then "--illumina-1.3" else ""} \
      ~{if (use_orphan) then "--use-orphan" else ""} \
      ~{if (plp_summary_only) then "--plp-summary-only" else ""} \
      ~{if (no_default_filter) then "--no-default-filter" else ""} \
      ~{if (force_overwrite) then "--force-overwrite" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ref: "Indexed reference fasta file (gzip supported) [null]"
    out: "Vcf output file [- = stdout]"
    region: "Limit calls to this region (chrom:start-end) [null]"
    bed: "List of positions (chr pos) or regions (BED) [null]"
    min_bq: "Skip any base with baseQ smaller than INT [6]"
    min_alt_bq: "Skip alternate bases with baseQ smaller than INT [6]"
    def_alt_bq: "Overwrite baseQs of alternate bases (that passed bq filter) with this value (-1: use median ref-bq; 0: keep) [0]"
    min_jq: "Skip any base with joinedQ smaller than INT [0]"
    min_alt_jq: "Skip alternate bases with joinedQ smaller than INT [0]"
    def_alt_jq: "Overwrite joinedQs of alternate bases (that passed jq filter) with this value (-1: use median ref-bq; 0: keep) [0]"
    no_baq: "Disable use of base-alignment quality (BAQ)"
    no_i_daq: "Don't use IDAQ values (NOT recommended under ANY circumstances other than debugging)"
    del_baq: "Delete pre-existing BAQ values, i.e. compute even if already present in BAM"
    no_ext_baq: "Use 'normal' BAQ (samtools default) instead of extended BAQ (both computed on the fly if not already present in lb tag)"
    min_mq: "Skip reads with mapping quality smaller than INT [0]"
    max_mq: "Cap mapping quality at INT [255]"
    no_mq: "Don't merge mapping quality in LoFreq's model"
    call_indels: "Enable indel calls (note: preprocess your file to include indel alignment qualities!)"
    only_indels: "Only call indels; no SNVs"
    src_qual: "Enable computation of source quality"
    ign_vcf: "Ignore variants in this vcf file for source quality computation. Multiple files can be given separated by commas"
    def_nm_q: "If >= 0, then replace non-match base qualities with this default value [-1]"
    sig: "P-Value cutoff / significance level [0.010000]"
    bon_f: "Bonferroni factor. 'dynamic' (increase per actually performed test) or INT ['dynamic']"
    min_cov: "Test only positions having at least this coverage [1]\\n(note: without --no-default-filter default filters (incl. coverage) kick in after predictions are done)"
    max_depth: "Cap coverage at this depth [1000000]"
    illumina_one_dot_three: "Assume the quality is Illumina-1.3-1.7/ASCII+64 encoded"
    use_orphan: "Count anomalous read pairs (i.e. where mate is not aligned properly)"
    plp_summary_only: "No variant calling. Just output pileup summary per column"
    no_default_filter: "Don't run default 'lofreq filter' automatically after calling variants"
    force_overwrite: "Overwrite any existing output"
    verbose: "Be verbose"
    debug: "Enable debugging"
    in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}