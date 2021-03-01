version 1.0

task BcftoolsGtcheck {
  input {
    Boolean? all_sites
    Boolean? cluster
    File? genotypes
    Int? gts_only
    Boolean? homs_only
    String? plot
    String? regions
    File? regions_file
    String? query_sample
    File? target_sample
    String? targets
    File? targets_file
    String query_dot_vcf_do_tgz
  }
  command <<<
    bcftools gtcheck \
      ~{query_dot_vcf_do_tgz} \
      ~{if (all_sites) then "--all-sites" else ""} \
      ~{if (cluster) then "--cluster" else ""} \
      ~{if defined(genotypes) then ("--genotypes " +  '"' + genotypes + '"') else ""} \
      ~{if defined(gts_only) then ("--GTs-only " +  '"' + gts_only + '"') else ""} \
      ~{if (homs_only) then "--homs-only" else ""} \
      ~{if defined(plot) then ("--plot " +  '"' + plot + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(regions_file) then ("--regions-file " +  '"' + regions_file + '"') else ""} \
      ~{if defined(query_sample) then ("--query-sample " +  '"' + query_sample + '"') else ""} \
      ~{if defined(target_sample) then ("--target-sample " +  '"' + target_sample + '"') else ""} \
      ~{if defined(targets) then ("--targets " +  '"' + targets + '"') else ""} \
      ~{if defined(targets_file) then ("--targets-file " +  '"' + targets_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    all_sites: "output comparison for all sites"
    cluster: "<min,max>         min inter- and max intra-sample error [0.23,-0.3]"
    genotypes: "genotypes to compare against"
    gts_only: "use GTs, ignore PLs, using <int> for unseen genotypes [99]"
    homs_only: "homozygous genotypes only (useful for low coverage data)"
    plot: "plot"
    regions: "restrict to comma-separated list of regions"
    regions_file: "restrict to regions listed in a file"
    query_sample: "query sample (by default the first sample is checked)"
    target_sample: "target sample in the -g file (used only for plotting)"
    targets: "similar to -r but streams rather than index-jumps"
    targets_file: "similar to -R but streams rather than index-jumps"
    query_dot_vcf_do_tgz: ""
  }
  output {
    File out_stdout = stdout()
  }
}