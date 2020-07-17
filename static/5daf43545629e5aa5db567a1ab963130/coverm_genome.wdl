version 1.0

task CovermGenome {
  input {
    String? contig_end_exclusion
    String? coupled
  }
  command <<<
    coverm genome \
      ~{if defined(contig_end_exclusion) then ("--contig-end-exclusion " +  '"' + contig_end_exclusion + '"') else ""} \
      ~{if defined(coupled) then ("--coupled " +  '"' + coupled + '"') else ""}
  >>>
  parameter_meta {
    contig_end_exclusion: ""
    coupled: ""
  }
}