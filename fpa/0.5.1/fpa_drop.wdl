version 1.0

task FpaDrop {
  input {
    Boolean? containment
    Boolean? dovetail
    Boolean? internal_match
    Boolean? same_name
    Int? length_lower
    Int? length_upper
    String? name_match
    Int? sequence_length_lower
    Int? sequence_length_upper
  }
  command <<<
    fpa drop \
      ~{if (containment) then "--containment" else ""} \
      ~{if (dovetail) then "--dovetail" else ""} \
      ~{if (internal_match) then "--internalmatch" else ""} \
      ~{if (same_name) then "--same-name" else ""} \
      ~{if defined(length_lower) then ("--length-lower " +  '"' + length_lower + '"') else ""} \
      ~{if defined(length_upper) then ("--length-upper " +  '"' + length_upper + '"') else ""} \
      ~{if defined(name_match) then ("--name-match " +  '"' + name_match + '"') else ""} \
      ~{if defined(sequence_length_lower) then ("--sequence-length-lower " +  '"' + sequence_length_lower + '"') else ""} \
      ~{if defined(sequence_length_upper) then ("--sequence-length-upper " +  '"' + sequence_length_upper + '"') else ""}
  >>>
  parameter_meta {
    containment: "Drop containment mapping"
    dovetail: "Drop dovetail mapping"
    internal_match: "Drop internal mapping"
    same_name: "Drop mapping where reads have same name"
    length_lower: "Drop mapping with length lower than value"
    length_upper: "Drop mapping with length upper than value"
    name_match: "Drop mapping where one reads match with regex"
    sequence_length_lower: "Drop mapping where one reads have length lower than value"
    sequence_length_upper: "Drop mapping where one reads have length upper than value"
  }
  output {
    File out_stdout = stdout()
  }
}