version 1.0

task DmDate {
  input {
    Boolean? h_slash_help
    String? d_slash_date
    File? f_slash_file
    File? r_slash_reference
    Boolean? r_slash_rfc_two_eight_two_two
    Boolean? us_lash_utc_slash_universal
  }
  command <<<
    dm_date \
      ~{if (h_slash_help) then "-h/--help" else ""} \
      ~{if defined(d_slash_date) then ("-d/--date " +  '"' + d_slash_date + '"') else ""} \
      ~{if defined(f_slash_file) then ("-f/--file " +  '"' + f_slash_file + '"') else ""} \
      ~{if defined(r_slash_reference) then ("-r/--reference " +  '"' + r_slash_reference + '"') else ""} \
      ~{if (r_slash_rfc_two_eight_two_two) then "-R/--rfc-2822" else ""} \
      ~{if (us_lash_utc_slash_universal) then "-u/--utc/--universal" else ""}
  >>>
  parameter_meta {
    h_slash_help: ": Print help."
    d_slash_date: ": Print information about that date."
    f_slash_file: ": Print out each date (1/line) in FILE"
    r_slash_reference: ": Print out the last modification\\ntime of FILE"
    r_slash_rfc_two_eight_two_two: ": Print the date in RFC 2822 format\\n(any +FORMAT string is ignored)\\nMon, 07 Aug 2006 12:34:56 -0600"
    us_lash_utc_slash_universal: ":\\nConverts date(s) to UT time.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_f_slash_file = "${in_f_slash_file}"
    File out_r_slash_reference = "${in_r_slash_reference}"
  }
}