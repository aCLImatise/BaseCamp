version 1.0

task GcloudTopicDatetimes {
  input {
    Boolean? poney_two_mthreedtfourhfivemsixdot_sevens
    Int two_five_sep_two_zero_zero_three
    Int other_date_separators
    String string_dot
  }
  command <<<
    gcloud topic datetimes \
      ~{two_five_sep_two_zero_zero_three} \
      ~{other_date_separators} \
      ~{string_dot} \
      ~{if (poney_two_mthreedtfourhfivemsixdot_sevens) then "-P1Y2M3DT4H5M6.7S" else ""}
  >>>
  parameter_meta {
    poney_two_mthreedtfourhfivemsixdot_sevens: "+p1y2m3dT4h5m6.7s"
    two_five_sep_two_zero_zero_three: "Sep-25-2003"
    other_date_separators: "other date separators:"
    string_dot: "For example:\\no 1 month ago: -p1m\\no 30 minutes from now: +pt30m\\no 2 hours and 30 minutes ago: -p2h30m\\n"
  }
  output {
    File out_stdout = stdout()
  }
}