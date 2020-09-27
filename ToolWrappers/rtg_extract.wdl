version 1.0

task RtgExtract {
  input {
    Boolean? header
    String? header_only
    File file
    String extract
    String times
  }
  command <<<
    rtg extract \
      ~{file} \
      ~{extract} \
      ~{times} \
      ~{if (header) then "--header" else ""} \
      ~{if defined(header_only) then ("--header-only " +  '"' + header_only + '"') else ""}
  >>>
  parameter_meta {
    header: "print out header also"
    header_only: "out header only"
    file: "the indexed block compressed genome position data file to"
    extract: "Filtering"
    times: "Reporting"
  }
  output {
    File out_stdout = stdout()
  }
}