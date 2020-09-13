version 1.0

task Copymat {
  input {
    Boolean? database_matrix_profiles
    Boolean? print_help_overrides
    Boolean? create_rps_mem
    Boolean? threshold_extending_hits
    Boolean? word_size_rps
  }
  command <<<
    copymat \
      ~{if (database_matrix_profiles) then "-P" else ""} \
      ~{if (print_help_overrides) then "-H" else ""} \
      ~{if (create_rps_mem) then "-r" else ""} \
      ~{if (threshold_extending_hits) then "-f" else ""} \
      ~{if (word_size_rps) then "-W" else ""}
  >>>
  parameter_meta {
    database_matrix_profiles: "Database for matrix profiles [File In]\\ndefault = stdin"
    print_help_overrides: "Print help; overrides all other arguments [T/F]\\ndefault = F"
    create_rps_mem: "Create RPS mem map file(s) [T/F]\\ndefault = T"
    threshold_extending_hits: "Threshold for extending hits for RPS database [Real]\\ndefault = 11"
    word_size_rps: "Word size for RPS database [Integer]\\ndefault = 3\\n"
  }
  output {
    File out_stdout = stdout()
  }
}