version 1.0

task Date {
  input {
    String? date
    Boolean? debug
    File? _date_once
    Boolean? output_datetime_formatfmt
    Boolean? rfc_email
    Int? rfc_three_three_three_nine
    File? reference
    String? set
    Boolean? universal
  }
  command <<<
    date \
      ~{if defined(date) then ("--date " +  '"' + date + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(_date_once) then ("--file " +  '"' + _date_once + '"') else ""} \
      ~{if (output_datetime_formatfmt) then "-I" else ""} \
      ~{if (rfc_email) then "--rfc-email" else ""} \
      ~{if defined(rfc_three_three_three_nine) then ("--rfc-3339 " +  '"' + rfc_three_three_three_nine + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(set) then ("--set " +  '"' + set + '"') else ""} \
      ~{if (universal) then "--universal" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    date: "display time described by STRING, not 'now'"
    debug: "annotate the parsed date,\\nand warn about questionable usage to stderr"
    _date_once: "like --date; once for each line of DATEFILE"
    output_datetime_formatfmt: "[FMT], --iso-8601[=FMT]  output date/time in ISO 8601 format.\\nFMT='date' for date only (the default),\\n'hours', 'minutes', 'seconds', or 'ns'\\nfor date and time to the indicated precision.\\nExample: 2006-08-14T02:34:56-06:00"
    rfc_email: "output date and time in RFC 5322 format.\\nExample: Mon, 14 Aug 2006 02:34:56 -0600"
    rfc_three_three_three_nine: "output date/time in RFC 3339 format.\\nFMT='date', 'seconds', or 'ns'\\nfor date and time to the indicated precision.\\nExample: 2006-08-14 02:34:56-06:00"
    reference: "display the last modification time of FILE"
    set: "set time described by STRING"
    universal: "print or set Coordinated Universal Time (UTC)"
  }
  output {
    File out_stdout = stdout()
  }
}