version 1.0

task FpaKeep {
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
    fpa keep \
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
    containment: "Keep only containment mapping"
    dovetail: "Keep only dovetail mapping"
    internal_match: "Keep only internal mapping"
    same_name: "Keep only mapping where reads have same name"
    length_lower: "Keep only mapping with length lower than value"
    length_upper: "Keep only mapping with length upper than value"
    name_match: "Keep only mapping where one reads match with regex"
    sequence_length_lower: "Keep only mapping where one reads have length lower than value"
    sequence_length_upper: "Keep only mapping where one reads have length upper than value\\n"
  }
  output {
    File out_stdout = stdout()
  }
}