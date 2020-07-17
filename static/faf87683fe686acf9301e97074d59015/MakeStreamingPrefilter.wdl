version 1.0

task MakeStreamingPrefilter.pyRange {
  input {
    String make_streaming_prefilter_do_tpy
    String reference_file
    String out_file
    String range
  }
  command <<<
    MakeStreamingPrefilter.py range \
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
}