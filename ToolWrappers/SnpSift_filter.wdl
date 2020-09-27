version 1.0

task SnpSiftFilter {
  input {
    String? add_filter
    File? expr_file
    File? file
    String? filter_id
    Boolean? inverse
    Boolean? pass
    String? rm_filter
    File? set
    Boolean? err_missing
    Int? format
    Boolean? galaxy
    String? jar
    String java
    String filter
  }
  command <<<
    SnpSift filter \
      ~{java} \
      ~{filter} \
      ~{if defined(add_filter) then ("--addFilter " +  '"' + add_filter + '"') else ""} \
      ~{if defined(expr_file) then ("--exprFile " +  '"' + expr_file + '"') else ""} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{if defined(filter_id) then ("--filterId " +  '"' + filter_id + '"') else ""} \
      ~{if (inverse) then "--inverse" else ""} \
      ~{if (pass) then "--pass" else ""} \
      ~{if defined(rm_filter) then ("--rmFilter " +  '"' + rm_filter + '"') else ""} \
      ~{if defined(set) then ("--set " +  '"' + set + '"') else ""} \
      ~{if (err_missing) then "--errMissing" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if (galaxy) then "--galaxy" else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    add_filter: ": Add a string to FILTER VCF field if 'expression' is true. Default: '' (none)"
    expr_file: ": Read expression from a file"
    file: ": VCF input file. Default: STDIN"
    filter_id: ": ID for this filter (##FILTER tag in header and FILTER VCF field). Default: 'SnpSift'"
    inverse: ": Inverse. Show lines that do not match filter expression"
    pass: ": Use 'PASS' field instead of filtering out VCF entries"
    rm_filter: ": Remove a string from FILTER VCF field if 'expression' is true (and 'str' is in the field). Default: '' (none)"
    set: ": Create a SET using 'file'"
    err_missing: ": Error is a field is missing. Default: false"
    format: ": SnpEff format version: {2, 3}. Default: Auto"
    galaxy: ": Used from Galaxy (expressions have been sanitized)."
    jar: ""
    java: ""
    filter: ""
  }
  output {
    File out_stdout = stdout()
  }
}