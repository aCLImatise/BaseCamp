version 1.0

task UmisFastqtransform {
  input {
    Boolean? keep_fast_q_tags
    Boolean? separate_cb
    String? demux_ed_cb
    Int? cores
    Int? fast_q_one_out
    Int? fast_q_two_out
    Int? min_length
    String stdout_dot
  }
  command <<<
    umis fastqtransform \
      ~{stdout_dot} \
      ~{if (keep_fast_q_tags) then "--keep_fastq_tags" else ""} \
      ~{if (separate_cb) then "--separate_cb" else ""} \
      ~{if defined(demux_ed_cb) then ("--demuxed_cb " +  '"' + demux_ed_cb + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(fast_q_one_out) then ("--fastq1out " +  '"' + fast_q_one_out + '"') else ""} \
      ~{if defined(fast_q_two_out) then ("--fastq2out " +  '"' + fast_q_two_out + '"') else ""} \
      ~{if defined(min_length) then ("--min_length " +  '"' + min_length + '"') else ""}
  >>>
  parameter_meta {
    keep_fast_q_tags: ""
    separate_cb: "Keep dual index barcodes separate."
    demux_ed_cb: ""
    cores: ""
    fast_q_one_out: ""
    fast_q_two_out: ""
    min_length: "Minimum length of read to keep."
    stdout_dot: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}