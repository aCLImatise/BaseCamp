version 1.0

task Vcfcheck {
  input {
    String? input_file
    Boolean? arg_output_json
    Boolean? arg_start_location
    String? limit_records
    String? message_every
    Boolean? arg_apply_filtering
    Boolean? arg_strict_assertions
    String? check_bcf_errors
    Boolean? arg_show_warnings
  }
  command <<<
    vcfcheck \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{true="-o" false="" arg_output_json} \
      ~{true="-l" false="" arg_start_location} \
      ~{if defined(limit_records) then ("--limit-records " +  '"' + limit_records + '"') else ""} \
      ~{if defined(message_every) then ("--message-every " +  '"' + message_every + '"') else ""} \
      ~{true="-f" false="" arg_apply_filtering} \
      ~{true="-H" false="" arg_strict_assertions} \
      ~{if defined(check_bcf_errors) then ("--check-bcf-errors " +  '"' + check_bcf_errors + '"') else ""} \
      ~{true="-W" false="" arg_show_warnings}
  >>>
  parameter_meta {
    input_file: "The input file"
    arg_output_json: "[ --output-file ] arg   The output JSON file with basic counts."
    arg_start_location: "[ --location ] arg      Start location."
    limit_records: "Maximum number of records to process"
    message_every: "Print a message every N records."
    arg_apply_filtering: "[ --apply-filters ] arg Apply filtering in VCF."
    arg_strict_assertions: "[ --strict-homref ] arg Be strict about hom-ref assertions (i.e. don't  allow these to overlap)."
    check_bcf_errors: "Check if turning this file into BCF will succeed  or fail."
    arg_show_warnings: "[ --all-warnings ] arg  Show all warnings, not just the first instance."
  }
}