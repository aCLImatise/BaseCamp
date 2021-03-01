version 1.0

task Map2gtf {
  input {
    String annotation_do_ttl_st
    String alignments_dot_bam
    String out_file_dot_bam
  }
  command <<<
    map2gtf \
      ~{annotation_do_ttl_st} \
      ~{alignments_dot_bam} \
      ~{out_file_dot_bam}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    annotation_do_ttl_st: ""
    alignments_dot_bam: ""
    out_file_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}