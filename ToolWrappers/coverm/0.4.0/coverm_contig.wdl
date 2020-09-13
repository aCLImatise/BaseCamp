version 1.0

task CovermContig {
  input {
    String? coupled
    String? interleaved
    Int? one
    Int? two
    String? reference
    String? single
    String? contig_end_exclusion
  }
  command <<<
    coverm contig \
      ~{if defined(coupled) then ("--coupled " +  '"' + coupled + '"') else ""} \
      ~{if defined(interleaved) then ("--interleaved " +  '"' + interleaved + '"') else ""} \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(single) then ("--single " +  '"' + single + '"') else ""} \
      ~{if defined(contig_end_exclusion) then ("--contig-end-exclusion " +  '"' + contig_end_exclusion + '"') else ""}
  >>>
  parameter_meta {
    coupled: "..."
    interleaved: "..."
    one: "..."
    two: "..."
    reference: "..."
    single: "..."
    contig_end_exclusion: ""
  }
  output {
    File out_stdout = stdout()
  }
}