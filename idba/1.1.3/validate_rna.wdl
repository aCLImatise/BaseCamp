version 1.0

task ValidateRna {
  input {
    String? min_contig
    String? similar
    String? complete_rate
    Boolean? is_local
    String validate_contigs_blat
    String ref_dot_fa
    String contigs_dot_fa_dot
  }
  command <<<
    validate_rna \
      ~{validate_contigs_blat} \
      ~{ref_dot_fa} \
      ~{contigs_dot_fa_dot} \
      ~{if defined(min_contig) then ("--min_contig " +  '"' + min_contig + '"') else ""} \
      ~{if defined(similar) then ("--similar " +  '"' + similar + '"') else ""} \
      ~{if defined(complete_rate) then ("--complete_rate " +  '"' + complete_rate + '"') else ""} \
      ~{true="--is_local" false="" is_local}
  >>>
  parameter_meta {
    min_contig: "(=100)            minimum contigs"
    similar: "(=0.95)              similarity"
    complete_rate: "(=0.8)         completeness"
    is_local: "local align"
    validate_contigs_blat: ""
    ref_dot_fa: ""
    contigs_dot_fa_dot: ""
  }
}