version 1.0

task ParseSdrfConvertopenms {
  input {
    File? sd_rf
    String? raw
    Boolean? legacy
    Boolean? two_tables
    Boolean? verbose
  }
  command <<<
    parse_sdrf convert_openms \
      ~{if defined(sd_rf) then ("--sdrf " +  '"' + sd_rf + '"') else ""} \
      ~{if defined(raw) then ("--raw " +  '"' + raw + '"') else ""} \
      ~{if (legacy) then "--legacy" else ""} \
      ~{if (two_tables) then "--twotables" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sd_rf: "SDRF file"
    raw: "Keep filenames in experimental design output\\nas raw."
    legacy: "legacy=Create artifical sample column not\\nneeded in OpenMS 2.6."
    two_tables: "Create one-table or two-tables format."
    verbose: "Output debug information."
  }
  output {
    File out_stdout = stdout()
  }
}