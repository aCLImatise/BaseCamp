version 1.0

task HtsboxBamidx {
  input {
    Int? s
    String bam_idx
    String in_dot_bam
  }
  command <<<
    htsbox bamidx \
      ~{bam_idx} \
      ~{in_dot_bam} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""}
  >>>
  parameter_meta {
    s: ""
    bam_idx: ""
    in_dot_bam: ""
  }
}