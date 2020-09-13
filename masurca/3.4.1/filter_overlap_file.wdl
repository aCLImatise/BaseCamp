version 1.0

task FilterOverlapFile {
  input {
    Int? threads
    File? output_file_devfd
    Boolean? dump
    String filter_overlap_file_cmdline
    String fragments
  }
  command <<<
    filter_overlap_file \
      ~{filter_overlap_file_cmdline} \
      ~{fragments} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(output_file_devfd) then ("--output " +  '"' + output_file_devfd + '"') else ""} \
      ~{if (dump) then "--dump" else ""}
  >>>
  parameter_meta {
    threads: "Number of threads (1)"
    output_file_devfd: "Output file (/dev/fd/1)"
    dump: "Fragment in raw -dumpfragment format (false)"
    filter_overlap_file_cmdline: ""
    fragments: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_devfd = "${in_output_file_devfd}"
  }
}