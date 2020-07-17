version 1.0

task ParseSdrfConvertOpenms {
  input {
    String? sd_rf
    String? raw
    Boolean? legacy
    Boolean? one_table
    Boolean? verbose
  }
  command <<<
    parse_sdrf convert-openms \
      ~{if defined(sd_rf) then ("--sdrf " +  '"' + sd_rf + '"') else ""} \
      ~{if defined(raw) then ("--raw " +  '"' + raw + '"') else ""} \
      ~{true="--legacy" false="" legacy} \
      ~{true="--onetable" false="" one_table} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    sd_rf: "SDRF file"
    raw: "Keep filenames in experimental design output as raw."
    legacy: "/ -m, --modern     legacy=Create artifical sample column not needed in OpenMS 2.6."
    one_table: "/ -t2, --twotables Create one-table or two-tables format."
    verbose: "/ -q, --quiet     Output debug information."
  }
}