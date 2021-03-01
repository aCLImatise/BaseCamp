version 1.0

task RtgExtract {
  input {
    Boolean? header
    String? header_only
    File indexed_block_compressed
    String extract
    String times
  }
  command <<<
    rtg extract \
      ~{indexed_block_compressed} \
      ~{extract} \
      ~{times} \
      ~{if (header) then "--header" else ""} \
      ~{if defined(header_only) then ("--header-only " +  '"' + header_only + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    header: "print out header also"
    header_only: "out header only"
    indexed_block_compressed: "the indexed block compressed genome position data file to"
    extract: "Filtering"
    times: "Reporting"
  }
  output {
    File out_stdout = stdout()
  }
}