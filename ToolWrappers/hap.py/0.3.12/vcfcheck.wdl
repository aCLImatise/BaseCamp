version 1.0

task Vcfcheck {
  input {
    File? input_file
    File? arg_output_json
    Boolean? arg_start_location
    Int? limit_records
    String? message_every
    Boolean? arg_apply_filtering
    Boolean? arg_be_strict
    File? check_bcf_errors
    Boolean? arg_show_warnings
  }
  command <<<
    vcfcheck \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if (arg_output_json) then "-o" else ""} \
      ~{if (arg_start_location) then "-l" else ""} \
      ~{if defined(limit_records) then ("--limit-records " +  '"' + limit_records + '"') else ""} \
      ~{if defined(message_every) then ("--message-every " +  '"' + message_every + '"') else ""} \
      ~{if (arg_apply_filtering) then "-f" else ""} \
      ~{if (arg_be_strict) then "-H" else ""} \
      ~{if defined(check_bcf_errors) then ("--check-bcf-errors " +  '"' + check_bcf_errors + '"') else ""} \
      ~{if (arg_show_warnings) then "-W" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file: "The input file"
    arg_output_json: "[ --output-file ] arg   The output JSON file with basic counts."
    arg_start_location: "[ --location ] arg      Start location."
    limit_records: "Maximum number of records to process"
    message_every: "Print a message every N records."
    arg_apply_filtering: "[ --apply-filters ] arg Apply filtering in VCF."
    arg_be_strict: "[ --strict-homref ] arg Be strict about hom-ref assertions (i.e. don't\\nallow these to overlap)."
    check_bcf_errors: "Check if turning this file into BCF will succeed\\nor fail."
    arg_show_warnings: "[ --all-warnings ] arg  Show all warnings, not just the first instance."
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_json = "${in_arg_output_json}"
  }
}