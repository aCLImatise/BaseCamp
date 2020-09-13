version 1.0

task Snverpool {
  input {
    Boolean? input_directory_required
    Boolean? reference_file_required
    Boolean? pool_info_file
    Boolean? number_haploids_required
    Boolean? target_region_bed
    Boolean? prefix_file_default
    Boolean? mq
    Boolean? bq
    Boolean? strand_bias_threshold
    Boolean? fisher_exact_threshold
    Boolean? pvalue_threshold_default
    Boolean? at_least_how
    Boolean? allele_frequency_threshold
    Boolean? inactivate_s_f
    Boolean? db
    String? jar
    String java
  }
  command <<<
    snver_pool \
      ~{java} \
      ~{if (input_directory_required) then "-i" else ""} \
      ~{if (reference_file_required) then "-r" else ""} \
      ~{if (pool_info_file) then "-c" else ""} \
      ~{if (number_haploids_required) then "-n" else ""} \
      ~{if (target_region_bed) then "-l" else ""} \
      ~{if (prefix_file_default) then "-o" else ""} \
      ~{if (mq) then "-mq" else ""} \
      ~{if (bq) then "-bq" else ""} \
      ~{if (strand_bias_threshold) then "-s" else ""} \
      ~{if (fisher_exact_threshold) then "-f" else ""} \
      ~{if (pvalue_threshold_default) then "-p" else ""} \
      ~{if (at_least_how) then "-a" else ""} \
      ~{if (allele_frequency_threshold) then "-t" else ""} \
      ~{if (inactivate_s_f) then "-u" else ""} \
      ~{if (db) then "-db" else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    input_directory_required: "<input directory (required) >"
    reference_file_required: "<reference file (required) >"
    pool_info_file: "<pool info file (preferred) >"
    number_haploids_required: "<the number of haploids (required when option \\\"-c\\\" is not given)>"
    target_region_bed: "<target region bed file (default is null) >"
    prefix_file_default: "<prefix output file (default is input_file name) >"
    mq: "<mapping quality threshold (default is 20) >"
    bq: "<base quality threshold (default is 17) >"
    strand_bias_threshold: "<strand bias threshold (default is 0.0001) >"
    fisher_exact_threshold: "<fisher exact threshold (default is 0.0001) >"
    pvalue_threshold_default: "<p-value threshold (default is bonferroni=0.05) >"
    at_least_how: "<at least how many reads supporting each strand for alternative allele (default is 1)>"
    allele_frequency_threshold: "<allele frequency threshold (default is 0)>"
    inactivate_s_f: "<inactivate -s and -f above this threshold (default is 30)  >"
    db: "<path for dbSNP, column number of chr, pos and snp_id (format: dbsnp,1,2,3; default null)>"
    jar: ""
    java: ""
  }
  output {
    File out_stdout = stdout()
  }
}