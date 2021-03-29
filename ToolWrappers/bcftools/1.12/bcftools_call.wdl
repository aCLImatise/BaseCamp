version 1.0

task BcftoolsCall {
  input {
    Boolean? no_version
    File? write_output_file
    String? output_type
    Int? ploidy
    File? ploidy_file
    String? regions
    File? regions_file
    String? samples
    File? samples_file
    String? targets
    File? targets_file
    Int? threads
    Boolean? keep_alts
    String? annotate
    String? prior_freqs
    File? group_samples
    String? group_samples_tag
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
      ~{if defined(annotate) then ("--annotate " +  '"' + annotate + '"') else ""} \
      ~{if defined(prior_freqs) then ("--prior-freqs " +  '"' + prior_freqs + '"') else ""} \
      ~{if defined(group_samples) then ("--group-samples " +  '"' + group_samples + '"') else ""} \
      ~{if defined(group_samples_tag) then ("--group-samples-tag " +  '"' + group_samples_tag + '"') else ""} \
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
    docker: "quay.io/biocontainers/bcftools:1.12--h3f113a9_0"
  }
  parameter_meta {
    no_version: "Do not append version and command line to the header"
    write_output_file: "Write output to a file [standard output]"
    output_type: "|u|z|v     Output type: 'b' compressed BCF; 'u' uncompressed BCF; 'z' compressed VCF; 'v' uncompressed VCF [v]"
    ploidy: "[?]      Predefined ploidy, 'list' to print available settings, append '?' for details [2]"
    ploidy_file: "Space/tab-delimited list of CHROM,FROM,TO,SEX,PLOIDY"
    regions: "Restrict to comma-separated list of regions"
    regions_file: "Restrict to regions listed in a file"
    samples: "List of samples to include [all samples]"
    samples_file: "PED file or a file with an optional column with sex (see man page for details) [all samples]"
    targets: "Similar to -r but streams rather than index-jumps"
    targets_file: "Similar to -R but streams rather than index-jumps"
    threads: "Use multithreading with INT worker threads [0]"
    keep_alts: "Keep all possible alternate alleles at variant sites"
    annotate: "Optional tags to output (lowercase allowed); '?' to list available tags"
    prior_freqs: ",AC       Use prior allele frequencies, determined from these pre-filled tags"
    group_samples: "|-    Group samples by population (file with \\\"sample\\tgroup\\\") or \\\"-\\\" for single-sample calling.\\nThis requires FORMAT/QS or other Number=R,Type=Integer tag such as FORMAT/AD"
    group_samples_tag: "The tag to use with -G, by default FORMAT/QS and FORMAT/AD are checked automatically"
    gvc_f: ",[...]          Group non-variant sites into gVCF blocks by minimum per-sample DP"
    insert_missed: "Output also sites missed by mpileup but present in -T"
    keep_masked_ref: "Keep sites with masked reference allele (REF=N)"
    skip_variants: "Skip indels/snps"
    variants_only: "Output variant sites only"
    consensus_caller: "The original calling method (conflicts with -m)"
    constrain: "One of: alleles, trio (see manual)"
    multi_allelic_caller: "Alternative model for multiallelic and rare-variant calling (conflicts with -c)"
    novel_rate: ",[...]  Likelihood of novel mutation for constrained trio calling, see man page for details [1e-8,1e-9,1e-9]"
    pval_threshold: "Variant if P(ref|D)<FLOAT with -c [0.5]"
    prior: "Mutation rate (use bigger for greater sensitivity), use with -m [1.1e-3]"
    in_dot_vcf_do_tgz: ""
  }
  output {
    File out_stdout = stdout()
    File out_write_output_file = "${in_write_output_file}"
  }
}