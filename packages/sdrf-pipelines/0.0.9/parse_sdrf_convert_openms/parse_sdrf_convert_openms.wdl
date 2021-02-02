version 1.0

task ParseSdrfConvertopenms {
  input {
    File? sd_rf
    String? raw
    Boolean? legacy
    Boolean? one_table
    Boolean? verbose
  }
  command <<<
    parse_sdrf convert_openms \
      ~{if defined(sd_rf) then ("--sdrf " +  '"' + sd_rf + '"') else ""} \
      ~{if defined(raw) then ("--raw " +  '"' + raw + '"') else ""} \
      ~{if (legacy) then "--legacy" else ""} \
      ~{if (one_table) then "--onetable" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    sd_rf: "SDRF file"
    raw: "Keep filenames in experimental design output\\nas raw."
    legacy: "/ -m, --modern     legacy=Create artifical sample column not\\nneeded in OpenMS 2.6."
    one_table: "/ -t2, --twotables\\nCreate one-table or two-tables format."
    verbose: "/ -q, --quiet     Output debug information."
  }
  output {
    File out_stdout = stdout()
  }
}