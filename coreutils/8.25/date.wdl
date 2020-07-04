version 1.0

task Date {
  input {
    String? date
    String? file
    Boolean? output_datetime_iso
    Boolean? rfc_two_eight_two_two
    String? rfc_three_three_three_nine
    File? reference
    String? set
    Boolean? universal
    String? option
  }
  command <<<
    date \
      ~{option} \
      ~{if defined(date) then ("--date " +  '"' + date + '"') else ""} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{true="-I" false="" output_datetime_iso} \
      ~{true="--rfc-2822" false="" rfc_two_eight_two_two} \
      ~{if defined(rfc_three_three_three_nine) then ("--rfc-3339 " +  '"' + rfc_three_three_three_nine + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(set) then ("--set " +  '"' + set + '"') else ""} \
      ~{true="--universal" false="" universal}
  >>>
  parameter_meta {
    date: "display time described by STRING, not 'now'"
    file: "like --date; once for each line of DATEFILE"
    output_datetime_iso: "[FMT], --iso-8601[=FMT]  output date/time in ISO 8601 format. FMT='date' for date only (the default), 'hours', 'minutes', 'seconds', or 'ns' for date and time to the indicated precision. Example: 2006-08-14T02:34:56-0600"
    rfc_two_eight_two_two: "output date and time in RFC 2822 format. Example: Mon, 14 Aug 2006 02:34:56 -0600"
    rfc_three_three_three_nine: "output date/time in RFC 3339 format. FMT='date', 'seconds', or 'ns' for date and time to the indicated precision. Example: 2006-08-14 02:34:56-06:00"
    reference: "display the last modification time of FILE"
    set: "set time described by STRING"
    universal: "print or set Coordinated Universal Time (UTC)"
    option: ""
  }
}