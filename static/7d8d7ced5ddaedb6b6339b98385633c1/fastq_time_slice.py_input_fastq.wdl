version 1.0

task FastqTimeSlicepyInputFastq {
  input {
    String? e
    String? s
    String? t
    String fast_q_time_slice_do_tpy
  }
  command <<<
    fastq_time_slice_py input_fastq \
      ~{fast_q_time_slice_do_tpy} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    e: ""
    s: ""
    t: ""
    fast_q_time_slice_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}