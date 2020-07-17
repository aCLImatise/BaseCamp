version 1.0

task MbNaiveBsfinder {
  input {
    Int? min_transitions
    String? reference
    String? mutation
  }
  command <<<
    mb-naive-bsfinder \
      ~{if defined(min_transitions) then ("--min_transitions " +  '"' + min_transitions + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(mutation) then ("--mutation " +  '"' + mutation + '"') else ""}
  >>>
  parameter_meta {
    min_transitions: "minimum number of transitions required"
    reference: "set default reference nucleotide"
    mutation: "set default mutation nucleotide"
  }
}