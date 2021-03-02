version 1.0

task HtsboxBcfidx {
  input {
    Int? s
    String bam_idx
    String in_dot_bam
  }
  command <<<
    htsbox bcfidx \
      ~{bam_idx} \
      ~{in_dot_bam} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    s: ""
    bam_idx: ""
    in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}