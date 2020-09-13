version 1.0

task Makemat {
  input {
    Boolean? database_name_profile
    Boolean? cost_open_default
    Boolean? cost_extend_default
    Boolean? underlying_matrix_default
    Boolean? underlying_sequence_database
    Boolean? effective_length_profile
    Boolean? scaling_factor_avoid
    Boolean? print_help_overrides
  }
  command <<<
    makemat \
      ~{if (database_name_profile) then "-P" else ""} \
      ~{if (cost_open_default) then "-G" else ""} \
      ~{if (cost_extend_default) then "-E" else ""} \
      ~{if (underlying_matrix_default) then "-U" else ""} \
      ~{if (underlying_sequence_database) then "-d" else ""} \
      ~{if (effective_length_profile) then "-z" else ""} \
      ~{if (scaling_factor_avoid) then "-S" else ""} \
      ~{if (print_help_overrides) then "-H" else ""}
  >>>
  parameter_meta {
    database_name_profile: "Database name for profile database [File In]\\ndefault = stdin"
    cost_open_default: "Cost to open a gap [Integer]\\ndefault = 11"
    cost_extend_default: "Cost to extend a gap [Integer]\\ndefault = 1"
    underlying_matrix_default: "Underlying Matrix [String]\\ndefault = BLOSUM62"
    underlying_sequence_database: "Underlying sequence database used to make profiles [String]\\ndefault = nr"
    effective_length_profile: "Effective length of the profile database (0 for length of -d option) [Integer]\\ndefault = 0"
    scaling_factor_avoid: "Scaling factor for  matrix outputs to avoid round-off problems [Real]\\ndefault = 100.0"
    print_help_overrides: "Print help; overrides all other arguments [T/F]\\ndefault = F\\n"
  }
  output {
    File out_stdout = stdout()
  }
}