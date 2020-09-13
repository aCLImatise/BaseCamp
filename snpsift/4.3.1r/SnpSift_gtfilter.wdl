version 1.0

task SnpSiftGtfilter {
  input {
    Boolean? _exprfile_file
    Boolean? _file_inputvcf
    Boolean? gn
    Boolean? gv
    Boolean? _inverse_inverse
    Boolean? _set_create
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
      ~{if (_exprfile_file) then "-e" else ""} \
      ~{if (_file_inputvcf) then "-f" else ""} \
      ~{if (gn) then "-gn" else ""} \
      ~{if (gv) then "-gv" else ""} \
      ~{if (_inverse_inverse) then "-n" else ""} \
      ~{if (_set_create) then "-s" else ""} \
      ~{if (err_missing) then "--errMissing" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    _exprfile_file: "| --exprFile <file>    : Read expression from a file"
    _file_inputvcf: "| --file <input.vcf>   : VCF input file. Default: STDIN"
    gn: "| --field <name>       : Field name to replace if filter is true. Default: 'GT'"
    gv: "| --value <value>      : Field value to replace if filter is true. Default: '.'"
    _inverse_inverse: "| --inverse            : Inverse. Show lines that do not match filter expression"
    _set_create: "| --set <file>         : Create a SET using 'file'"
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