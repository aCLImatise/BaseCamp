version 1.0

task ValidateContigsBlat {
  input {
    Int? min_contig
    Boolean? is_local
    String ref_dot_fa
    String contigs_dot_fa_dot
  }
  command <<<
    validate_contigs_blat \
      ~{ref_dot_fa} \
      ~{contigs_dot_fa_dot} \
      ~{if defined(min_contig) then ("--min_contig " +  '"' + min_contig + '"') else ""} \
      ~{if (is_local) then "--is_local" else ""}
  >>>
  parameter_meta {
    min_contig: "(=100)            minimum contigs"
    is_local: "local align"
    ref_dot_fa: ""
    contigs_dot_fa_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}