version 1.0

task MsaDiff {
  input {
    String? alphabet
    Boolean? ignore_base_id
    Boolean? ignore_gap_type
    String alignment_one_dot_fa
    String alignment_two_dot_fa
  }
  command <<<
    msa_diff \
      ~{alignment_one_dot_fa} \
      ~{alignment_two_dot_fa} \
      ~{if defined(alphabet) then ("--alphabet " +  '"' + alphabet + '"') else ""} \
      ~{true="--ignore-base-id" false="" ignore_base_id} \
      ~{true="--ignore-gap-type" false="" ignore_gap_type}
  >>>
  parameter_meta {
    alphabet: "Use given string for alphabet.  Can be used to accommodate nonstandard characters (e.g., 'b' for any base or '^' for insertion gaps, '.' for deletion gaps).  "
    ignore_base_id: "Ignore identity of bases; consider all alphabetical characters equivalent (e.g., A, C, G, T, N, X, b)."
    ignore_gap_type: "Ignore type of gap; consider '-', '^', and '.' all equivalent."
    alignment_one_dot_fa: ""
    alignment_two_dot_fa: ""
  }
}