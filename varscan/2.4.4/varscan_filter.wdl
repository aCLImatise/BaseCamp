version 1.0

task VarscanFilter {
  input {
    Boolean? min_coverage
    Boolean? min_reads_two
    Boolean? min_strands_two
    Boolean? min_avg_qual
    Boolean? min_var_freq
    Boolean? p_value
    Boolean? in_del_file
    Boolean? output_file
    String? jar
    String java
    String filter
    String? variant
    File? file
  }
  command <<<
    varscan filter \
      ~{java} \
      ~{filter} \
      ~{variant} \
      ~{file} \
      ~{true="--min-coverage" false="" min_coverage} \
      ~{true="--min-reads2" false="" min_reads_two} \
      ~{true="--min-strands2" false="" min_strands_two} \
      ~{true="--min-avg-qual" false="" min_avg_qual} \
      ~{true="--min-var-freq" false="" min_var_freq} \
      ~{true="--p-value" false="" p_value} \
      ~{true="--indel-file" false="" in_del_file} \
      ~{true="--output-file" false="" output_file} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    min_coverage: "Minimum read depth at a position to make a call [10]"
    min_reads_two: "Minimum supporting reads at a position to call variants [2]"
    min_strands_two: "Minimum # of strands on which variant observed (1 or 2) [1]"
    min_avg_qual: "Minimum average base quality for variant-supporting reads [20]"
    min_var_freq: "Minimum variant allele frequency threshold [0.20]"
    p_value: "Default p-value threshold for calling variants [1e-01]"
    in_del_file: "File of indels for filtering nearby SNPs"
    output_file: "File to contain variants passing filters"
    jar: ""
    java: ""
    filter: ""
    variant: ""
    file: ""
  }
}