version 1.0

task FastqTimeSlice.pyOutputFastq {
  input {
    String? t
    String? s
    String? e
    String fast_q_time_slice_do_tpy
  }
  command <<<
    fastq_time_slice.py output_fastq \
      ~{fast_q_time_slice_do_tpy} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""}
  >>>
  parameter_meta {
    t: ""
    s: ""
    e: ""
    fast_q_time_slice_do_tpy: ""
  }
}