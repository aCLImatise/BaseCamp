version 1.0

task MsaDiff {
  input {
    Int? format_one
    Int? format_two
    String? alphabet
    Boolean? ignore_base_id
    Boolean? ignore_gap_type
    Int alignment_one_dot_fa
    Int alignment_two_dot_fa
  }
  command <<<
    msa_diff \
      ~{alignment_one_dot_fa} \
      ~{alignment_two_dot_fa} \
      ~{if defined(format_one) then ("--format1 " +  '"' + format_one + '"') else ""} \
      ~{if defined(format_two) then ("--format2 " +  '"' + format_two + '"') else ""} \
      ~{if defined(alphabet) then ("--alphabet " +  '"' + alphabet + '"') else ""} \
      ~{if (ignore_base_id) then "--ignore-base-id" else ""} \
      ~{if (ignore_gap_type) then "--ignore-gap-type" else ""}
  >>>
  parameter_meta {
    format_one: "|SS|PHYLIP|MPM|MAF\\nFormat of first alignment (default is to guess format from file contents)."
    format_two: "|SS|PHYLIP|MPM|MAF\\nFormat of second alignment (default is to guess format from file contents)."
    alphabet: "Use given string for alphabet.  Can be used to accommodate\\nnonstandard characters (e.g., 'b' for any base or '^' for insertion\\ngaps, '.' for deletion gaps)."
    ignore_base_id: "Ignore identity of bases; consider all alphabetical characters\\nequivalent (e.g., A, C, G, T, N, X, b)."
    ignore_gap_type: "Ignore type of gap; consider '-', '^', and '.' all equivalent."
    alignment_one_dot_fa: ""
    alignment_two_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}