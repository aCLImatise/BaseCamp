version 1.0

task GcloudTopicDatetimes {
  input {
    Int sep_
    Int two_five_sep_two_zero_zero_three
    Int other_date_separators
    Float two_zero_zero_three_dot_sep_dot_two_five
    String string_dot
  }
  command <<<
    gcloud topic datetimes \
      ~{sep_} \
      ~{two_five_sep_two_zero_zero_three} \
      ~{other_date_separators} \
      ~{two_zero_zero_three_dot_sep_dot_two_five} \
      ~{string_dot}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sep_: "2003-Sep-25"
    two_five_sep_two_zero_zero_three: "Sep-25-2003"
    other_date_separators: "other date separators:"
    two_zero_zero_three_dot_sep_dot_two_five: "2003/09/25"
    string_dot: "For example:\\no 1 month ago: -p1m\\no 30 minutes from now: +pt30m\\no 2 hours and 30 minutes ago: -p2h30m\\n"
  }
  output {
    File out_stdout = stdout()
  }
}