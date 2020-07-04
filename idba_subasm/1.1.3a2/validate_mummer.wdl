version 1.0

task ValidateMummer {
  input {
    String? min_contig
    String? similar
    String validate_contigs_mummer
    String ref_dot_fa
    String contigs_dot_fa_dot
  }
  command <<<
    validate_mummer \
      ~{validate_contigs_mummer} \
      ~{ref_dot_fa} \
      ~{contigs_dot_fa_dot} \
      ~{if defined(min_contig) then ("--min_contig " +  '"' + min_contig + '"') else ""} \
      ~{if defined(similar) then ("--similar " +  '"' + similar + '"') else ""}
  >>>
  parameter_meta {
    min_contig: "(=100)            minimum contigs"
    similar: "(=0.95)              similarity"
    validate_contigs_mummer: ""
    ref_dot_fa: ""
    contigs_dot_fa_dot: ""
  }
}