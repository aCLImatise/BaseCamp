version 1.0

task SortPsl {
  input {
    String validate_contigs_blat
    String ref_dot_fa
    String contigs_dot_fa_dot
  }
  command <<<
    sort_psl \
      ~{validate_contigs_blat} \
      ~{ref_dot_fa} \
      ~{contigs_dot_fa_dot}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    validate_contigs_blat: ""
    ref_dot_fa: ""
    contigs_dot_fa_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}