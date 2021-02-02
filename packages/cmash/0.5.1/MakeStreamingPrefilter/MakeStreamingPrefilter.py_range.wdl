version 1.0

task MakeStreamingPrefilterpyRange {
  input {
    String make_streaming_prefilter_do_tpy
    String reference_file
    String out_file
    String range
  }
  command <<<
    MakeStreamingPrefilter_py range \
      ~{make_streaming_prefilter_do_tpy} \
      ~{reference_file} \
      ~{out_file} \
      ~{range}
  >>>
  parameter_meta {
    make_streaming_prefilter_do_tpy: ""
    reference_file: ""
    out_file: ""
    range: ""
  }
  output {
    File out_stdout = stdout()
  }
}