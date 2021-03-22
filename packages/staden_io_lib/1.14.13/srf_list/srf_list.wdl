version 1.0

task SrfList {
  input {
    Boolean? count_only_list
    Boolean? verbose_gives_data
    Boolean? list_long_format
    String srf_file
  }
  command <<<
    srf_list \
      ~{srf_file} \
      ~{if (count_only_list) then "-c" else ""} \
      ~{if (verbose_gives_data) then "-v" else ""} \
      ~{if (list_long_format) then "-l" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/staden_io_lib:1.14.13--h9dace67_0"
  }
  parameter_meta {
    count_only_list: "Count only - do not list filenames"
    verbose_gives_data: "Verbose - gives summary data per file too"
    list_long_format: "List in long format. Lines contain:\\nname position body-size header-size\\n"
    srf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}