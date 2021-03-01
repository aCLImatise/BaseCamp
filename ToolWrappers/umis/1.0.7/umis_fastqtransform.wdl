version 1.0

task UmisFastqtransform {
  input {
    Boolean? keep_fast_q_tags
    Int? demux_ed_cb
    String stdout_dot
  }
  command <<<
    umis fastqtransform \
      ~{stdout_dot} \
      ~{if (keep_fast_q_tags) then "--keep_fastq_tags" else ""} \
      ~{if defined(demux_ed_cb) then ("--demuxed_cb " +  '"' + demux_ed_cb + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    keep_fast_q_tags: "Keep dual index barcodes separate."
    demux_ed_cb: "Minimum length of read to keep."
    stdout_dot: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}