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
    Boolean? least_how_many
    Boolean? discard_locus_ratio
    Boolean? inactivate_s_threshold
    Boolean? db
    String? jar
    String java
  }
  command <<<
    snver \
      ~{java} \
      ~{if (input_file_required) then "-i" else ""} \
      ~{if (reference_file_required) then "-r" else ""} \
      ~{if (target_region_bed) then "-l" else ""} \
      ~{if (prefix_output_file) then "-o" else ""} \
      ~{if (number_haploids_default) then "-n" else ""} \
      ~{if (het) then "-het" else ""} \
      ~{if (mq) then "-mq" else ""} \
      ~{if (bq) then "-bq" else ""} \
      ~{if (strand_bias_threshold) then "-s" else ""} \
      ~{if (fisher_exact_threshold) then "-f" else ""} \
      ~{if (pvalue_threshold_default) then "-p" else ""} \
      ~{if (least_how_many) then "-a" else ""} \
      ~{if (discard_locus_ratio) then "-b" else ""} \
      ~{if (inactivate_s_threshold) then "-u" else ""} \
      ~{if (db) then "-db" else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
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
    least_how_many: "<at least how many reads supporting each strand for alternative allele (default is 1)>"
    discard_locus_ratio: "<discard locus with ratio of alt/ref below the threshold (default is 0.25)>"
    inactivate_s_threshold: "<inactivate -s and -f above this threshold (default is 30)  >"
    db: "<path for dbSNP, column number of chr, pos and snp_id (format: dbsnp,1,2,3; default null)>"
    jar: ""
    java: ""
  }
  output {
    File out_stdout = stdout()
  }
}