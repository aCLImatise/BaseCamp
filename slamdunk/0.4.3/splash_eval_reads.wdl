version 1.0

task SplashEvalReads {
  input {
    String? bed
    String? reference
    String? o
  }
  command <<<
    splash eval-reads \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    bed: "BED file"
    reference: "Reference fasta file"
    o: ""
  }
}