version 1.0

task CRISPRessoCount {
  input {
    String? guide_length
    Boolean? keep_intermediate
    String? r
    Int? q
  }
  command <<<
    CRISPRessoCount \
      ~{if defined(guide_length) then ("--guide_length " +  '"' + guide_length + '"') else ""} \
      ~{true="--keep_intermediate" false="" keep_intermediate} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""}
  >>>
  parameter_meta {
    guide_length: "Lenght in bp to extract the sgRNA upstream of the tracrRNA sequence (default: 20)"
    keep_intermediate: "Keep all the intermediate files (default: False)"
    r: ""
    q: ""
  }
}