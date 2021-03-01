version 1.0

task CovermGenome {
  input {
    String? coupled
    String? contig_end_exclusion
  }
  command <<<
    coverm genome \
      ~{if defined(coupled) then ("--coupled " +  '"' + coupled + '"') else ""} \
      ~{if defined(contig_end_exclusion) then ("--contig-end-exclusion " +  '"' + contig_end_exclusion + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    coupled: ""
    contig_end_exclusion: ""
  }
  output {
    File out_stdout = stdout()
  }
}