version 1.0

task LongGF {
  input {
    String input_bam
    String input_gtf
    Int min_overlap_len
    String bin_size
    Int min_map_len
  }
  command <<<
    LongGF \
      ~{input_bam} \
      ~{input_gtf} \
      ~{min_overlap_len} \
      ~{bin_size} \
      ~{min_map_len}
  >>>
  runtime {
    docker: "quay.io/biocontainers/longgf:0.1.2--h179b981_0"
  }
  parameter_meta {
    input_bam: ""
    input_gtf: ""
    min_overlap_len: ""
    bin_size: ""
    min_map_len: ""
  }
  output {
    File out_stdout = stdout()
  }
}