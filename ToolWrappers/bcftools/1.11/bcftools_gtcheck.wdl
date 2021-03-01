version 1.0

task BcftoolsGtcheck {
  input {
    Boolean? distinctive_sites
    Boolean? dry_run
    Int? error_probability
    File? genotypes
    Boolean? homs_only
    Int? n_matches
    Boolean? no_h_we_prob
    String? pairs
    File? pairs_file
    String? regions
    File? regions_file
    Boolean? samples
    Boolean? samples_file
    String? targets
    File? targets_file
    Array[Int] use
    String query_dot_vcf_do_tgz
  }
  command <<<
    bcftools gtcheck \
      ~{query_dot_vcf_do_tgz} \
      ~{if (distinctive_sites) then "--distinctive-sites" else ""} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if defined(error_probability) then ("--error-probability " +  '"' + error_probability + '"') else ""} \
      ~{if defined(genotypes) then ("--genotypes " +  '"' + genotypes + '"') else ""} \
      ~{if (homs_only) then "--homs-only" else ""} \
      ~{if defined(n_matches) then ("--n-matches " +  '"' + n_matches + '"') else ""} \
      ~{if (no_h_we_prob) then "--no-HWE-prob" else ""} \
      ~{if defined(pairs) then ("--pairs " +  '"' + pairs + '"') else ""} \
      ~{if defined(pairs_file) then ("--pairs-file " +  '"' + pairs_file + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(regions_file) then ("--regions-file " +  '"' + regions_file + '"') else ""} \
      ~{if (samples) then "--samples" else ""} \
      ~{if (samples_file) then "--samples-file" else ""} \
      ~{if defined(targets) then ("--targets " +  '"' + targets + '"') else ""} \
      ~{if defined(targets_file) then ("--targets-file " +  '"' + targets_file + '"') else ""} \
      ~{if defined(use) then ("--use " +  '"' + use + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bcftools:1.11--h7c999a4_0"
  }
  parameter_meta {
    distinctive_sites: "Find sites that can distinguish between at least NUM sample pairs.\\nNUM[,MEM[,TMP]]          If the number is smaller or equal to 1, it is interpreted as the fraction of pairs.\\nThe optional MEM string sets the maximum memory used for in-memory sorting [500M]\\nand TMP is a prefix of temporary files used by external sorting [/tmp/bcftools-gtcheck]"
    dry_run: "Stop after first record to estimate required time"
    error_probability: "Phred-scaled probability of genotyping error, 0 for faster but less accurate results [40]"
    genotypes: "Genotypes to compare against"
    homs_only: "Homozygous genotypes only, useful with low coverage data (requires -g)"
    n_matches: "Print only top INT matches for each sample, 0 for unlimited. Use negative value\\nto sort by HWE probability rather than the number of discordant sites [0]"
    no_h_we_prob: "Disable calculation of HWE probability"
    pairs: "Comma-separated sample pairs to compare (qry,gt[,qry,gt..] with -g or qry,qry[,qry,qry..] w/o)"
    pairs_file: "File with tab-delimited sample pairs to compare (qry,gt with -g or qry,qry w/o)"
    regions: "Restrict to comma-separated list of regions"
    regions_file: "Restrict to regions listed in a file"
    samples: "[qry|gt]:LIST        List of query or -g samples (by default all samples are compared)"
    samples_file: "[qry|gt]:FILE   File with the query or -g samples to compare"
    targets: "Similar to -r but streams rather than index-jumps"
    targets_file: "Similar to -R but streams rather than index-jumps"
    use: "Which tag to use in the query file (TAG1) and the -g file (TAG2) [PL,GT]"
    query_dot_vcf_do_tgz: ""
  }
  output {
    File out_stdout = stdout()
  }
}