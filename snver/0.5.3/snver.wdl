version 1.0

task Snver {
  input {
    Boolean? input_file_required
    Boolean? reference_file_required
    Boolean? target_region_bed
    Boolean? prefix_output_file
    Boolean? number_haploids_default
    Boolean? het
    Boolean? mq
    Boolean? bq
    Boolean? strand_bias_threshold
    Boolean? fisher_exact_threshold
    Boolean? pvalue_threshold_default
    Boolean? at_least_how
    Boolean? discard_locus_ratio
    Boolean? inactivate_s_threshold
    Boolean? db
    String? jar
    String java
  }
  command <<<
    snver \
      ~{java} \
      ~{true="-i" false="" input_file_required} \
      ~{true="-r" false="" reference_file_required} \
      ~{true="-l" false="" target_region_bed} \
      ~{true="-o" false="" prefix_output_file} \
      ~{true="-n" false="" number_haploids_default} \
      ~{true="-het" false="" het} \
      ~{true="-mq" false="" mq} \
      ~{true="-bq" false="" bq} \
      ~{true="-s" false="" strand_bias_threshold} \
      ~{true="-f" false="" fisher_exact_threshold} \
      ~{true="-p" false="" pvalue_threshold_default} \
      ~{true="-a" false="" at_least_how} \
      ~{true="-b" false="" discard_locus_ratio} \
      ~{true="-u" false="" inactivate_s_threshold} \
      ~{true="-db" false="" db} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    input_file_required: "<input file (required) >"
    reference_file_required: "<reference file (required) >"
    target_region_bed: "<target region bed file (default is null) >"
    prefix_output_file: "<prefix output file (default is input_file name) >"
    number_haploids_default: "<the number of haploids (default is 2) >"
    het: "<heterozygosity (default is 0.001) >"
    mq: "<mapping quality threshold (default is 20) >"
    bq: "<base quality threshold (default is 17) >"
    strand_bias_threshold: "<strand bias threshold (default is 0.0001) >"
    fisher_exact_threshold: "<fisher exact threshold (default is 0.0001) >"
    pvalue_threshold_default: "<p-value threshold (default is bonferroni=0.05) >"
    at_least_how: "<at least how many reads supporting each strand for alternative allele (default is 1)>"
    discard_locus_ratio: "<discard locus with ratio of alt/ref below the threshold (default is 0.25)>"
    inactivate_s_threshold: "<inactivate -s and -f above this threshold (default is 30)  >"
    db: "<path for dbSNP, column number of chr, pos and snp_id (format: dbsnp,1,2,3; default null)>"
    jar: ""
    java: ""
  }
}