version 1.0

task ValidateContigsMummer {
  input {
    Int? min_contig
    String ref_dot_fa
    String contigs_dot_fa_dot
  }
  command <<<
    validate_contigs_mummer \
      ~{ref_dot_fa} \
      ~{contigs_dot_fa_dot} \
      ~{if defined(min_contig) then ("--min_contig " +  '"' + min_contig + '"') else ""}
  >>>
  parameter_meta {
    min_contig: "(=100)            minimum contigs"
    ref_dot_fa: ""
    contigs_dot_fa_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}