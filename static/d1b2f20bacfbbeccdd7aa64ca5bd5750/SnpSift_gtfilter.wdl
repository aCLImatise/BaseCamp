version 1.0

task SnpSiftGtfilter {
  input {
    File? expr_file
    File? vcf_input_file
    String? field
    String? value
    Boolean? inverse
    File? set
    Boolean? err_missing
    Int? format
    String? jar
    String java
    String filter
  }
  command <<<
    SnpSift gtfilter \
      ~{java} \
      ~{filter} \
      ~{if defined(expr_file) then ("--exprFile " +  '"' + expr_file + '"') else ""} \
      ~{if defined(vcf_input_file) then ("--file " +  '"' + vcf_input_file + '"') else ""} \
      ~{if defined(field) then ("--field " +  '"' + field + '"') else ""} \
      ~{if defined(value) then ("--value " +  '"' + value + '"') else ""} \
      ~{if (inverse) then "--inverse" else ""} \
      ~{if defined(set) then ("--set " +  '"' + set + '"') else ""} \
      ~{if (err_missing) then "--errMissing" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    expr_file: ": Read expression from a file"
    vcf_input_file: ": VCF input file. Default: STDIN"
    field: ": Field name to replace if filter is true. Default: 'GT'"
    value: ": Field value to replace if filter is true. Default: '.'"
    inverse: ": Inverse. Show lines that do not match filter expression"
    set: ": Create a SET using 'file'"
    err_missing: ": Error is a field is missing. Default: false"
    format: ": SnpEff format version: {2, 3}. Default: Auto"
    jar: ""
    java: ""
    filter: ""
  }
  output {
    File out_stdout = stdout()
  }
}