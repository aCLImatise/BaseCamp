version 1.0

task RunDiscoSnpRadsh {
  input {
    Boolean? f_of
    Int? k_size
    Int? min_coverage
    Boolean? high_precision
    File? graph
    String? prefix
    Int? max_coverage
    Boolean? no_low_complexity
    Int? deletion_max_size
    Boolean? src
    Int? max_size_cluster
    Float? max_missing
    Float? min_rank
    Int? max_snp_per_bubble
    Int? max_substitutions
    Int? max_threads
    Boolean? wraith_mode_only
    Int? verbose_avoids_output
  }
  command <<<
    run_discoSnpRad_sh \
      ~{if (f_of) then "--fof" else ""} \
      ~{if defined(k_size) then ("--k_size " +  '"' + k_size + '"') else ""} \
      ~{if defined(min_coverage) then ("--min_coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if (high_precision) then "--high_precision" else ""} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(max_coverage) then ("--max_coverage " +  '"' + max_coverage + '"') else ""} \
      ~{if (no_low_complexity) then "--no_low_complexity" else ""} \
      ~{if defined(deletion_max_size) then ("--deletion_max_size " +  '"' + deletion_max_size + '"') else ""} \
      ~{if (src) then "--src" else ""} \
      ~{if defined(max_size_cluster) then ("--max_size_cluster " +  '"' + max_size_cluster + '"') else ""} \
      ~{if defined(max_missing) then ("--max_missing " +  '"' + max_missing + '"') else ""} \
      ~{if defined(min_rank) then ("--min_rank " +  '"' + min_rank + '"') else ""} \
      ~{if defined(max_snp_per_bubble) then ("--max_snp_per_bubble " +  '"' + max_snp_per_bubble + '"') else ""} \
      ~{if defined(max_substitutions) then ("--max_substitutions " +  '"' + max_substitutions + '"') else ""} \
      ~{if defined(max_threads) then ("--max_threads " +  '"' + max_threads + '"') else ""} \
      ~{if (wraith_mode_only) then "-w" else ""} \
      ~{if defined(verbose_avoids_output) then ("-v " +  '"' + verbose_avoids_output + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    f_of: "<file name of a file of file(s)>\\nThe input read files indicated in a file of file(s)\\nExample: -r bank.fof with bank.fof containing the two lines\\ndata_sample/reads_sequence1.fasta\\ndata_sample/reads_sequence2.fasta.gz"
    k_size: "<int value>\\nSet the length of used kmers. Must fit the compiled value.\\nDefault=31"
    min_coverage: "<int value>\\nSet the minimal coverage per read set: Used by kissnp2 (don't use kmers with lower coverage) and kissreads (read coherency threshold).\\nThis coverage can be automatically detected per read set (in this case use \\\"auto\\\" or specified per read set, see the documentation.)\\nDefault=3"
    high_precision: "lower recall / higher precision mode. With this parameter no symmetrical crossroads may be traversed during bubble detection (by default up to 5 symmetrical crossroads may be traversed during bubble detection)."
    graph: "reuse a previously created graph (.h5 file) with same prefix and same k and c parameters."
    prefix: "All out files will start with this prefix. Default=\\\"discoRes\\\""
    max_coverage: "Set the maximal coverage for each read set: Used by kissnp2 (don't use kmers with higher coverage).\\nDefault=2^31-1"
    no_low_complexity: "Remove low complexity bubbles"
    deletion_max_size: "discoSnpRad will search for deletions of size from 1 to D included. Default=0"
    src: "[src_path]\\nperforms clustering of variants with short_read_connector\\nsrc_path: **absolute** path to short_read_connector directory, containing the \\\"short_read_connector.sh\\\" file.\\n-Note1: short read connector must be compiled.\\n-Note2: if no value is given, it assumes short_read_connector.sh is in the PATH env variable.\\n-Note3: with this option, discoSnpRad outputs a vcf file containing the variants clustered by locus"
    max_size_cluster: "Discards cluster containing more than this number of variants. (Default 150)\\nRequires the -S or --src option"
    max_missing: "Remove variants with more than max_missing % missing values. (Default 0.95, removes variants detected in 5% and less populations)"
    min_rank: "Remove variants whose rank is smaller than this threshold. (Default 0.4)"
    max_snp_per_bubble: "discoSnpRad will search up to P SNPs in a unique bubble. Default=5"
    max_substitutions: "Set the number of authorized substitutions used while mapping reads on found SNPs (kissreads). Default=10"
    max_threads: "Max number of used threads. 0 means all threads\\ndefault 0"
    wraith_mode_only: "Wraith mode: only show all discoSnpRad commands without running them"
    verbose_avoids_output: "Verbose 0 (avoids progress output) or 1 (enables progress output) -- default=1."
  }
  output {
    File out_stdout = stdout()
  }
}