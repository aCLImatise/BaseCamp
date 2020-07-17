version 1.0

task BcftoolsNorm {
  input {
    String? check_ref
    Boolean? remove_duplicates
    String? rm_dup
    File? fast_a_ref
    Boolean? force
    Boolean? multi_allelic_s
    Boolean? no_version
    Boolean? do_not_normalize
    File? write_output_file
    String? output_type
    String? regions
    File? regions_file
    Boolean? strict_filter
    String? targets
    File? targets_file
    Int? threads
    Int? site_win
    String in_dot_vcf_do_tgz
  }
  command <<<
    bcftools norm \
      ~{in_dot_vcf_do_tgz} \
      ~{if defined(check_ref) then ("--check-ref " +  '"' + check_ref + '"') else ""} \
      ~{true="--remove-duplicates" false="" remove_duplicates} \
      ~{if defined(rm_dup) then ("--rm-dup " +  '"' + rm_dup + '"') else ""} \
      ~{if defined(fast_a_ref) then ("--fasta-ref " +  '"' + fast_a_ref + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{true="--multiallelics" false="" multi_allelic_s} \
      ~{true="--no-version" false="" no_version} \
      ~{true="--do-not-normalize" false="" do_not_normalize} \
      ~{if defined(write_output_file) then ("--output " +  '"' + write_output_file + '"') else ""} \
      ~{if defined(output_type) then ("--output-type " +  '"' + output_type + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(regions_file) then ("--regions-file " +  '"' + regions_file + '"') else ""} \
      ~{true="--strict-filter" false="" strict_filter} \
      ~{if defined(targets) then ("--targets " +  '"' + targets + '"') else ""} \
      ~{if defined(targets_file) then ("--targets-file " +  '"' + targets_file + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(site_win) then ("--site-win " +  '"' + site_win + '"') else ""}
  >>>
  parameter_meta {
    check_ref: "check REF alleles and exit (e), warn (w), exclude (x), or set (s) bad sites [e]"
    remove_duplicates: "remove duplicate lines of the same type."
    rm_dup: "remove duplicate snps|indels|both|all|exact"
    fast_a_ref: "reference sequence"
    force: "try to proceed even if malformed tags are encountered. Experimental, use at your own risk"
    multi_allelic_s: "<-|+>[type]   split multiallelics (-) or join biallelics (+), type: snps|indels|both|any [both]"
    no_version: "do not append version and command line to the header"
    do_not_normalize: "do not normalize indels (with -m or -c s)"
    write_output_file: "write output to a file [standard output]"
    output_type: "'b' compressed BCF; 'u' uncompressed BCF; 'z' compressed VCF; 'v' uncompressed VCF [v]"
    regions: "restrict to comma-separated list of regions"
    regions_file: "restrict to regions listed in a file"
    strict_filter: "when merging (-m+), merged site is PASS only if all sites being merged PASS"
    targets: "similar to -r but streams rather than index-jumps"
    targets_file: "similar to -R but streams rather than index-jumps"
    threads: "use multithreading with <int> worker threads [0]"
    site_win: "buffer for sorting lines which changed position during realignment [1000]"
    in_dot_vcf_do_tgz: ""
  }
}