version 1.0

task FilterBlat {
  input {
    String? min_contig
    String? similar
    Boolean? is_local
    String validate_contigs_blat
    String ref_dot_fa
    String contigs_dot_fa_dot
  }
  command <<<
    filter_blat \
      ~{validate_contigs_blat} \
      ~{ref_dot_fa} \
      ~{contigs_dot_fa_dot} \
      ~{if defined(min_contig) then ("--min_contig " +  '"' + min_contig + '"') else ""} \
      ~{if defined(similar) then ("--similar " +  '"' + similar + '"') else ""} \
      ~{true="--is_local" false="" is_local}
  >>>
  parameter_meta {
    min_contig: "(=100)            minimum contigs"
    similar: "(=0.95)              similarity"
    is_local: "is local"
    validate_contigs_blat: ""
    ref_dot_fa: ""
    contigs_dot_fa_dot: ""
  }
}