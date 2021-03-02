version 1.0

task DBdump {
  input {
    Boolean? r_read_number
    Boolean? s_string_string
    Boolean? n_snr_string
    Boolean? i_string_vector
    Boolean? string_deletion_values
    Boolean? p_string_repeat
    Boolean? tx_b_xth
    Boolean? dump_entire_database
    Boolean? output_base_pairs
    Boolean? uu
    Boolean? rhsa_iqp
    String? mask
  }
  command <<<
    DBdump \
      ~{mask} \
      ~{if (r_read_number) then "-r" else ""} \
      ~{if (s_string_string) then "-s" else ""} \
      ~{if (n_snr_string) then "-a" else ""} \
      ~{if (i_string_vector) then "-i" else ""} \
      ~{if (string_deletion_values) then "-q" else ""} \
      ~{if (p_string_repeat) then "-p" else ""} \
      ~{if (tx_b_xth) then "-m" else ""} \
      ~{if (dump_entire_database) then "-u" else ""} \
      ~{if (output_base_pairs) then "-U" else ""} \
      ~{if (uu) then "-uU" else ""} \
      ~{if (rhsa_iqp) then "-rhsaiqp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    r_read_number: ": R #              - read number"
    s_string_string: ": S # string       - sequence string"
    n_snr_string: ": N # # # #        - SNR of ACGT channels (#/100)\\nA # string       - arrow pulse-width string"
    i_string_vector: ": I # string       - intrinsic quality vector (as an ASCII string)"
    string_deletion_values: ": d # string       - Quiva deletion values (as an ASCII string)\\nc # string       - Quiva deletion character string\\ni # string       - Quiva insertion value string\\nm # string       - Quiva merge value string\\ns # string       - Quiva substitution value string"
    p_string_repeat: ": P # string       - repeat profile vector (as an ASCII string)"
    tx_b_xth: ": Tx #n (#b #e)^#n - x'th track on command line, #n intervals all on same line"
    dump_entire_database: ": Dump entire untrimmed database."
    output_base_pairs: ": Output base pairs in upper case letters"
    uu: ""
    rhsa_iqp: ""
    mask: ""
  }
  output {
    File out_stdout = stdout()
  }
}