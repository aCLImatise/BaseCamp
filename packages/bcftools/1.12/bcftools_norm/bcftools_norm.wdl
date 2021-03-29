version 1.0

task BcftoolsNorm {
  input {
    Boolean? atomize
    Boolean? atom_overlaps
    String? check_ref
    Boolean? remove_duplicates
    String? rm_dup
    File? fast_a_ref
    Boolean? force
    Int? keep_sum
    Boolean? multi_allelic_s
    Boolean? no_version
    Boolean? do_not_normalize
    String? old_rec_tag
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
      ~{if (atomize) then "--atomize" else ""} \
      ~{if (atom_overlaps) then "--atom-overlaps" else ""} \
      ~{if defined(check_ref) then ("--check-ref " +  '"' + check_ref + '"') else ""} \
      ~{if (remove_duplicates) then "--remove-duplicates" else ""} \
      ~{if defined(rm_dup) then ("--rm-dup " +  '"' + rm_dup + '"') else ""} \
      ~{if defined(fast_a_ref) then ("--fasta-ref " +  '"' + fast_a_ref + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(keep_sum) then ("--keep-sum " +  '"' + keep_sum + '"') else ""} \
      ~{if (multi_allelic_s) then "--multiallelics" else ""} \
      ~{if (no_version) then "--no-version" else ""} \
      ~{if (do_not_normalize) then "--do-not-normalize" else ""} \
      ~{if defined(old_rec_tag) then ("--old-rec-tag " +  '"' + old_rec_tag + '"') else ""} \
      ~{if defined(write_output_file) then ("--output " +  '"' + write_output_file + '"') else ""} \
      ~{if defined(output_type) then ("--output-type " +  '"' + output_type + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(regions_file) then ("--regions-file " +  '"' + regions_file + '"') else ""} \
      ~{if (strict_filter) then "--strict-filter" else ""} \
      ~{if defined(targets) then ("--targets " +  '"' + targets + '"') else ""} \
      ~{if defined(targets_file) then ("--targets-file " +  '"' + targets_file + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(site_win) then ("--site-win " +  '"' + site_win + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bcftools:1.12--h3f113a9_0"
  }
  parameter_meta {
    atomize: "Decompose complex variants (e.g. MNVs become consecutive SNVs)"
    atom_overlaps: "'*'|.       Use the star allele (*) for overlapping alleles or set to missing (.) [*]"
    check_ref: "|w|x|s         Check REF alleles and exit (e), warn (w), exclude (x), or set (s) bad sites [e]"
    remove_duplicates: "Remove duplicate lines of the same type."
    rm_dup: "Remove duplicate snps|indels|both|all|exact"
    fast_a_ref: "Reference sequence"
    force: "Try to proceed even if malformed tags are encountered. Experimental, use at your own risk"
    keep_sum: ",..           Keep vector sum constant when splitting multiallelics (see github issue #360)"
    multi_allelic_s: "-|+TYPE     Split multiallelics (-) or join biallelics (+), type: snps|indels|both|any [both]"
    no_version: "Do not append version and command line to the header"
    do_not_normalize: "Do not normalize indels (with -m or -c s)"
    old_rec_tag: "Annotate modified records with INFO/STR indicating the original variant"
    write_output_file: "Write output to a file [standard output]"
    output_type: "'b' compressed BCF; 'u' uncompressed BCF; 'z' compressed VCF; 'v' uncompressed VCF [v]"
    regions: "Restrict to comma-separated list of regions"
    regions_file: "Restrict to regions listed in a file"
    strict_filter: "When merging (-m+), merged site is PASS only if all sites being merged PASS"
    targets: "Similar to -r but streams rather than index-jumps"
    targets_file: "Similar to -R but streams rather than index-jumps"
    threads: "Use multithreading with <int> worker threads [0]"
    site_win: "Buffer for sorting lines which changed position during realignment [1000]"
    in_dot_vcf_do_tgz: ""
  }
  output {
    File out_stdout = stdout()
    File out_write_output_file = "${in_write_output_file}"
  }
}