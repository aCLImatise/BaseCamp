version 1.0

task Isatab2isatab {
  input {
    String? input_investigation_file
    String? output_investigation_file
    String? quotes
    Boolean? no_warnings
  }
  command <<<
    isatab2isatab \
      ~{if defined(input_investigation_file) then ("--input-investigation-file " +  '"' + input_investigation_file + '"') else ""} \
      ~{if defined(output_investigation_file) then ("--output-investigation-file " +  '"' + output_investigation_file + '"') else ""} \
      ~{if defined(quotes) then ("--quotes " +  '"' + quotes + '"') else ""} \
      ~{true="--no-warnings" false="" no_warnings}
  >>>
  parameter_meta {
    input_investigation_file: "Path to input investigation file"
    output_investigation_file: "Path to output investigation file, stdout (\"-\") by default. Needs to be in a different directory!"
    quotes: "Character for quoting, e.g. \"\\"\" (None by default)"
    no_warnings: "Suppress ISA-tab related warnings (False by default)"
  }
}