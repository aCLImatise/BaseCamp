version 1.0

task VarscanReadcounts {
  input {
    File? variants_file
    File? output_file
    Boolean? min_coverage
    Int? min_base_qual
    String? jar
    String java
    String read_counts
    String? pile_up
  }
  command <<<
    varscan readcounts \
      ~{java} \
      ~{read_counts} \
      ~{pile_up} \
      ~{if defined(variants_file) then ("--variants-file " +  '"' + variants_file + '"') else ""} \
      ~{if (output_file) then "--output-file" else ""} \
      ~{if (min_coverage) then "--min-coverage" else ""} \
      ~{if defined(min_base_qual) then ("--min-base-qual " +  '"' + min_base_qual + '"') else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    variants_file: "list of variants at which to report readcounts"
    output_file: "Output file to contain the readcounts"
    min_coverage: "Minimum read depth at a position to make a call [1]"
    min_base_qual: "base quality at a position to count a read [20]"
    jar: ""
    java: ""
    read_counts: ""
    pile_up: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}