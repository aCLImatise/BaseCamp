version 1.0

task VarscanSomaticFilter {
  input {
    Boolean? min_coverage
    Boolean? min_reads_two
    Boolean? min_strands_two
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
    varscan somaticFilter \
      ~{java} \
      ~{filter} \
      ~{variant} \
      ~{file} \
      ~{true="--min-coverage" false="" min_coverage} \
      ~{true="--min-reads2" false="" min_reads_two} \
      ~{true="--min-strands2" false="" min_strands_two} \
      ~{true="--min-var-freq" false="" min_var_freq} \
      ~{true="--p-value" false="" p_value} \
      ~{true="--indel-file" false="" in_del_file} \
      ~{true="--output-file" false="" output_file} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    min_coverage: "Minimum read depth at a position to make a call [10]"
    min_reads_two: "Minimum supporting reads at a position to call variants [4]"
    min_strands_two: "Minimum # of strands on which variant observed (1 or 2) [1]"
    min_var_freq: "Minimum variant allele frequency threshold [0.20]"
    p_value: "Default p-value threshold for calling variants [5e-02]"
    in_del_file: "File of indels for filtering nearby SNPs"
    output_file: "Optional output file for filtered variants"
    jar: ""
    java: ""
    filter: ""
    variant: ""
    file: ""
  }
}