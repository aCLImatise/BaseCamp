version 1.0

task DmDate {
  input {
    String? date
    File? print_date_line
    File? reference
    Boolean? rfc_two_eight_two_two
    Boolean? universal
  }
  command <<<
    dm_date \
      ~{if defined(date) then ("--date " +  '"' + date + '"') else ""} \
      ~{if defined(print_date_line) then ("--file " +  '"' + print_date_line + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if (rfc_two_eight_two_two) then "--rfc-2822" else ""} \
      ~{if (universal) then "--universal" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    date: ": Print information about that date."
    print_date_line: ": Print out each date (1/line) in FILE"
    reference: ": Print out the last modification\\ntime of FILE"
    rfc_two_eight_two_two: ": Print the date in RFC 2822 format\\n(any +FORMAT string is ignored)\\nMon, 07 Aug 2006 12:34:56 -0600"
    universal: ":\\nConverts date(s) to UT time.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_print_date_line = "${in_print_date_line}"
    File out_reference = "${in_reference}"
  }
}