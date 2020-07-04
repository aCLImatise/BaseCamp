version 1.0

task SnverPool {
  input {
    Boolean? input_directory_required
    Boolean? reference_file_required
    Boolean? pool_info_file
    Boolean? number_haploids_required
    Boolean? target_region_bed
    Boolean? prefix_output_file
    Boolean? mq
    Boolean? bq
    Boolean? strand_bias_threshold
    Boolean? fisher_exact_threshold
    Boolean? pvalue_threshold_default
    Boolean? at_least_how
    Boolean? allele_frequency_threshold
    Boolean? inactivate_s_threshold
    Boolean? db
    String? jar
    String java
  }
  command <<<
    snver-pool \
      ~{java} \
      ~{true="-i" false="" input_directory_required} \
      ~{true="-r" false="" reference_file_required} \
      ~{true="-c" false="" pool_info_file} \
      ~{true="-n" false="" number_haploids_required} \
      ~{true="-l" false="" target_region_bed} \
      ~{true="-o" false="" prefix_output_file} \
      ~{true="-mq" false="" mq} \
      ~{true="-bq" false="" bq} \
      ~{true="-s" false="" strand_bias_threshold} \
      ~{true="-f" false="" fisher_exact_threshold} \
      ~{true="-p" false="" pvalue_threshold_default} \
      ~{true="-a" false="" at_least_how} \
      ~{true="-t" false="" allele_frequency_threshold} \
      ~{true="-u" false="" inactivate_s_threshold} \
      ~{true="-db" false="" db} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    input_directory_required: "<input directory (required) >"
    reference_file_required: "<reference file (required) >"
    pool_info_file: "<pool info file (preferred) >"
    number_haploids_required: "<the number of haploids (required when option \"-c\" is not given)>"
    target_region_bed: "<target region bed file (default is null) >"
    prefix_output_file: "<prefix output file (default is input_file name) >"
    mq: "<mapping quality threshold (default is 20) >"
    bq: "<base quality threshold (default is 17) >"
    strand_bias_threshold: "<strand bias threshold (default is 0.0001) >"
    fisher_exact_threshold: "<fisher exact threshold (default is 0.0001) >"
    pvalue_threshold_default: "<p-value threshold (default is bonferroni=0.05) >"
    at_least_how: "<at least how many reads supporting each strand for alternative allele (default is 1)>"
    allele_frequency_threshold: "<allele frequency threshold (default is 0)>"
    inactivate_s_threshold: "<inactivate -s and -f above this threshold (default is 30)  >"
    db: "<path for dbSNP, column number of chr, pos and snp_id (format: dbsnp,1,2,3; default null)>"
    jar: ""
    java: ""
  }
}