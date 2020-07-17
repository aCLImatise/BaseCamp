version 1.0

task DBdump {
  input {
    Boolean? r_read_number
    Boolean? s_string_string
    Boolean? n_snr_acgt
    Boolean? i_string_vector
    Boolean? d_string_values
    Boolean? p_string_vector
    Boolean? tx_b_xth
    Boolean? dump_entire_database
    Boolean? output_base_pairs
    Boolean? rhsa_iqp
    Boolean? uu
    String? mask
  }
  command <<<
    DBdump \
      ~{mask} \
      ~{true="-r" false="" r_read_number} \
      ~{true="-s" false="" s_string_string} \
      ~{true="-a" false="" n_snr_acgt} \
      ~{true="-i" false="" i_string_vector} \
      ~{true="-q" false="" d_string_values} \
      ~{true="-p" false="" p_string_vector} \
      ~{true="-m" false="" tx_b_xth} \
      ~{true="-u" false="" dump_entire_database} \
      ~{true="-U" false="" output_base_pairs} \
      ~{true="-rhsaiqp" false="" rhsa_iqp} \
      ~{true="-uU" false="" uu}
  >>>
  parameter_meta {
    r_read_number: ": R #              - read number"
    s_string_string: ": S # string       - sequence string"
    n_snr_acgt: ": N # # # #        - SNR of ACGT channels (#/100) A # string       - arrow pulse-width string"
    i_string_vector: ": I # string       - intrinsic quality vector (as an ASCII string)"
    d_string_values: ": d # string       - Quiva deletion values (as an ASCII string) c # string       - Quiva deletion character string i # string       - Quiva insertion value string m # string       - Quiva merge value string s # string       - Quiva substitution value string"
    p_string_vector: ": P # string       - repeat profile vector (as an ASCII string)"
    tx_b_xth: ": Tx #n (#b #e)^#n - x'th track on command line, #n intervals all on same line"
    dump_entire_database: ": Dump entire untrimmed database."
    output_base_pairs: ": Output base pairs in upper case letters"
    rhsa_iqp: ""
    uu: ""
    mask: ""
  }
}