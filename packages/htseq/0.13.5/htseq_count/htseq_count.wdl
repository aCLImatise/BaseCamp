version 1.0

task Htseqcount {
  input {
    String alignment_file
    String gff_file
  }
  command <<<
    htseq_count \
      ~{alignment_file} \
      ~{gff_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/htseq:0.13.5--py37h0498b6d_0"
  }
  parameter_meta {
    alignment_file: ""
    gff_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}