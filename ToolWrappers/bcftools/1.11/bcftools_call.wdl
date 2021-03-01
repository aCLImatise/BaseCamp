version 1.0

task BcftoolsCall {
  input {
    Boolean? no_version
    File? write_output_file
    String? output_type
    String? ploidy
    File? ploidy_file
    String? regions
    File? regions_file
    String? samples
    File? samples_file
    String? targets
    File? targets_file
    Int? threads
    Boolean? keep_alts
    String? format_fields
    Boolean? prior_freqs
    File? group_samples
    Int? gvc_f
    Boolean? insert_missed
    Boolean? keep_masked_ref
    String? skip_variants
    Boolean? variants_only
    Boolean? consensus_caller
    String? constrain
    Boolean? multi_allelic_caller
    Float? novel_rate
    Float? pval_threshold
    Float? prior
    String in_dot_vcf_do_tgz
  }
  command <<<
    bcftools call \
      ~{in_dot_vcf_do_tgz} \
      ~{if (no_version) then "--no-version" else ""} \
      ~{if defined(write_output_file) then ("--output " +  '"' + write_output_file + '"') else ""} \
      ~{if defined(output_type) then ("--output-type " +  '"' + output_type + '"') else ""} \
      ~{if defined(ploidy) then ("--ploidy " +  '"' + ploidy + '"') else ""} \
      ~{if defined(ploidy_file) then ("--ploidy-file " +  '"' + ploidy_file + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(regions_file) then ("--regions-file " +  '"' + regions_file + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(samples_file) then ("--samples-file " +  '"' + samples_file + '"') else ""} \
      ~{if defined(targets) then ("--targets " +  '"' + targets + '"') else ""} \
      ~{if defined(targets_file) then ("--targets-file " +  '"' + targets_file + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (keep_alts) then "--keep-alts" else ""} \
      ~{if defined(format_fields) then ("--format-fields " +  '"' + format_fields + '"') else ""} \
      ~{if (prior_freqs) then "--prior-freqs" else ""} \
      ~{if defined(group_samples) then ("--group-samples " +  '"' + group_samples + '"') else ""} \
      ~{if defined(gvc_f) then ("--gvcf " +  '"' + gvc_f + '"') else ""} \
      ~{if (insert_missed) then "--insert-missed" else ""} \
      ~{if (keep_masked_ref) then "--keep-masked-ref" else ""} \
      ~{if defined(skip_variants) then ("--skip-variants " +  '"' + skip_variants + '"') else ""} \
      ~{if (variants_only) then "--variants-only" else ""} \
      ~{if (consensus_caller) then "--consensus-caller" else ""} \
      ~{if defined(constrain) then ("--constrain " +  '"' + constrain + '"') else ""} \
      ~{if (multi_allelic_caller) then "--multiallelic-caller" else ""} \
      ~{if defined(novel_rate) then ("--novel-rate " +  '"' + novel_rate + '"') else ""} \
      ~{if defined(pval_threshold) then ("--pval-threshold " +  '"' + pval_threshold + '"') else ""} \
      ~{if defined(prior) then ("--prior " +  '"' + prior + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bcftools:1.11--h7c999a4_0"
  }
  parameter_meta {
    no_version: "do not append version and command line to the header"
    write_output_file: "write output to a file [standard output]"
    output_type: "output type: 'b' compressed BCF; 'u' uncompressed BCF; 'z' compressed VCF; 'v' uncompressed VCF [v]"
    ploidy: "[?]      predefined ploidy, 'list' to print available settings, append '?' for details"
    ploidy_file: "space/tab-delimited list of CHROM,FROM,TO,SEX,PLOIDY"
    regions: "restrict to comma-separated list of regions"
    regions_file: "restrict to regions listed in a file"
    samples: "list of samples to include [all samples]"
    samples_file: "PED file or a file with an optional column with sex (see man page for details) [all samples]"
    targets: "similar to -r but streams rather than index-jumps"
    targets_file: "similar to -R but streams rather than index-jumps"
    threads: "use multithreading with <int> worker threads [0]"
    keep_alts: "keep all possible alternate alleles at variant sites"
    format_fields: "output format fields: GQ,GP (lowercase allowed) []"
    prior_freqs: "<AN,AC>       use prior allele frequencies"
    group_samples: "group samples by population (file with \\\"sample\\tgroup\\\") or \\\"-\\\" for single-sample calling"
    gvc_f: ",[...]          group non-variant sites into gVCF blocks by minimum per-sample DP"
    insert_missed: "output also sites missed by mpileup but present in -T"
    keep_masked_ref: "keep sites with masked reference allele (REF=N)"
    skip_variants: "skip indels/snps"
    variants_only: "output variant sites only"
    consensus_caller: "the original calling method (conflicts with -m)"
    constrain: "one of: alleles, trio (see manual)"
    multi_allelic_caller: "alternative model for multiallelic and rare-variant calling (conflicts with -c)"
    novel_rate: ",[...]  likelihood of novel mutation for constrained trio calling, see man page for details [1e-8,1e-9,1e-9]"
    pval_threshold: "variant if P(ref|D)<FLOAT with -c [0.5]"
    prior: "mutation rate (use bigger for greater sensitivity), use with -m [1.1e-3]"
    in_dot_vcf_do_tgz: ""
  }
  output {
    File out_stdout = stdout()
    File out_write_output_file = "${in_write_output_file}"
  }
}