version 1.0

task IsatabValidate {
  input {
    String? input_investigation_file
    Boolean? show_duplicate_warnings
  }
  command <<<
    isatab_validate \
      ~{if defined(input_investigation_file) then ("--input-investigation-file " +  '"' + input_investigation_file + '"') else ""} \
      ~{true="--show-duplicate-warnings" false="" show_duplicate_warnings}
  >>>
  parameter_meta {
    input_investigation_file: "Path to input investigation file"
    show_duplicate_warnings: "Show duplicated warnings, i.e. with same message and same category (False by default)"
  }
}