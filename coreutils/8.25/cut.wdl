version 1.0

task Cut {
  input {
    Boolean? zero_terminated
    Boolean? first_mth_included
    String nth_byte_character_field_counted
    String nth_byte_character_field_end
    String n_m
  }
  command <<<
    cut \
      ~{nth_byte_character_field_counted} \
      ~{nth_byte_character_field_end} \
      ~{n_m} \
      ~{true="--zero-terminated" false="" zero_terminated} \
      ~{true="-M" false="" first_mth_included}
  >>>
  parameter_meta {
    zero_terminated: "line delimiter is NUL, not newline"
    first_mth_included: "from first to M'th (included) byte, character or field"
    nth_byte_character_field_counted: "N'th byte, character or field, counted from 1"
    nth_byte_character_field_end: "from N'th byte, character or field, to end of line"
    n_m: "from N'th to M'th (included) byte, character or field"
  }
}