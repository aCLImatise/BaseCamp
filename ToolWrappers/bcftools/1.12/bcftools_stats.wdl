version 1.0

task BcftoolsStats {
  input {
    File? af_bins
    String? af_tag
    Boolean? on_est_allele_only
    String? collapse
    Int? depth
    String? exclude
    File? exons
    String? apply_filters
    File? fast_a_ref
    String? include
    Boolean? split_by_id
    String? regions
    File? regions_file
    String? samples
    File? samples_file
    String? targets
    File? targets_file
    Int? user_ts_tv
    Int? threads
    Boolean? verbose
    String a_dot_vcf_do_tgz
    String? bdotvcfdotgz
  }
  command <<<
    bcftools stats \
      ~{a_dot_vcf_do_tgz} \
      ~{bdotvcfdotgz} \
      ~{if defined(af_bins) then ("--af-bins " +  '"' + af_bins + '"') else ""} \
      ~{if defined(af_tag) then ("--af-tag " +  '"' + af_tag + '"') else ""} \
      ~{if (on_est_allele_only) then "--1st-allele-only" else ""} \
      ~{if defined(collapse) then ("--collapse " +  '"' + collapse + '"') else ""} \
      ~{if defined(depth) then ("--depth " +  '"' + depth + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(exons) then ("--exons " +  '"' + exons + '"') else ""} \
      ~{if defined(apply_filters) then ("--apply-filters " +  '"' + apply_filters + '"') else ""} \
      ~{if defined(fast_a_ref) then ("--fasta-ref " +  '"' + fast_a_ref + '"') else ""} \
      ~{if defined(include) then ("--include " +  '"' + include + '"') else ""} \
      ~{if (split_by_id) then "--split-by-ID" else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(regions_file) then ("--regions-file " +  '"' + regions_file + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(samples_file) then ("--samples-file " +  '"' + samples_file + '"') else ""} \
      ~{if defined(targets) then ("--targets " +  '"' + targets + '"') else ""} \
      ~{if defined(targets_file) then ("--targets-file " +  '"' + targets_file + '"') else ""} \
      ~{if defined(user_ts_tv) then ("--user-tstv " +  '"' + user_ts_tv + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bcftools:1.12--h3f113a9_0"
  }
  parameter_meta {
    af_bins: "Allele frequency bins, a list (0.1,0.5,1) or a file (0.1\\n0.5\\n1)"
    af_tag: "Allele frequency tag to use, by default estimated from AN,AC or GT"
    on_est_allele_only: "Include only 1st allele at multiallelic sites"
    collapse: "Treat as identical records with <snps|indels|both|all|some|none>, see man page for details [none]"
    depth: ",INT,INT          Depth distribution: min,max,bin size [0,500,1]"
    exclude: "Exclude sites for which the expression is true (see man page for details)"
    exons: "Tab-delimited file with exons for indel frameshifts (chr,beg,end; 1-based, inclusive, bgzip compressed)"
    apply_filters: "Require at least one of the listed FILTER strings (e.g. \\\"PASS,.\\\")"
    fast_a_ref: "Faidx indexed reference sequence file to determine INDEL context"
    include: "Select sites for which the expression is true (see man page for details)"
    split_by_id: "Collect stats for sites with ID separately (known vs novel)"
    regions: "Restrict to comma-separated list of regions"
    regions_file: "Restrict to regions listed in a file"
    samples: "List of samples for sample stats, \\\"-\\\" to include all samples"
    samples_file: "File of samples to include"
    targets: "Similar to -r but streams rather than index-jumps"
    targets_file: "Similar to -R but streams rather than index-jumps"
    user_ts_tv: "[:min:max:n]  Collect Ts/Tv stats for any tag using the given binning [0:1:100]\\nA subfield can be selected as e.g. 'PV4[0]', here the first value of the PV4 tag"
    threads: "Use multithreading with <int> worker threads [0]"
    verbose: "Produce verbose per-site and per-sample output"
    a_dot_vcf_do_tgz: ""
    bdotvcfdotgz: ""
  }
  output {
    File out_stdout = stdout()
  }
}