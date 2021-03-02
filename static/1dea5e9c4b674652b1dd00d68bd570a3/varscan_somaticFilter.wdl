version 1.0

task VarscanSomaticFilter {
  input {
    Boolean? min_coverage
    Boolean? min_reads_two
    Boolean? min_strands_two
    Boolean? min_var_freq
    Boolean? p_value
    Boolean? in_del_file
    File? output_file
    String? jar
    String java
    String filter
    String? variant
    File? var_file
  }
  command <<<
    varscan somaticFilter \
      ~{java} \
      ~{filter} \
      ~{variant} \
      ~{var_file} \
      ~{if (min_coverage) then "--min-coverage" else ""} \
      ~{if (min_reads_two) then "--min-reads2" else ""} \
      ~{if (min_strands_two) then "--min-strands2" else ""} \
      ~{if (min_var_freq) then "--min-var-freq" else ""} \
      ~{if (p_value) then "--p-value" else ""} \
      ~{if (in_del_file) then "--indel-file" else ""} \
      ~{if (output_file) then "--output-file" else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
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
    var_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}