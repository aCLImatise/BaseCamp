version 1.0

task SrfList {
  input {
    Boolean? count_only_list
    Boolean? verbose_gives_data
    Boolean? list_long_format
  }
  command <<<
    srf_list \
      ~{true="-c" false="" count_only_list} \
      ~{true="-v" false="" verbose_gives_data} \
      ~{true="-l" false="" list_long_format}
  >>>
  parameter_meta {
    count_only_list: "Count only - do not list filenames"
    verbose_gives_data: "Verbose - gives summary data per file too"
    list_long_format: "List in long format. Lines contain: name position body-size header-size"
  }
}