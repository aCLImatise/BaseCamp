version 1.0

task Bcov {
  input {
    File? input_msa_file
    File? read_precomputed_matrix
    File? read_beta_strand
    File? write_predicted_map
    File? write_predicted_pairing
    Int? minimum_sequence_separation
    Int? verbose_level_default
  }
  command <<<
    bcov \
      ~{if defined(input_msa_file) then ("-a " +  '"' + input_msa_file + '"') else ""} \
      ~{if defined(read_precomputed_matrix) then ("-m " +  '"' + read_precomputed_matrix + '"') else ""} \
      ~{if defined(read_beta_strand) then ("-s " +  '"' + read_beta_strand + '"') else ""} \
      ~{if defined(write_predicted_map) then ("-c " +  '"' + write_predicted_map + '"') else ""} \
      ~{if defined(write_predicted_pairing) then ("-o " +  '"' + write_predicted_pairing + '"') else ""} \
      ~{if defined(minimum_sequence_separation) then ("-n " +  '"' + minimum_sequence_separation + '"') else ""} \
      ~{if defined(verbose_level_default) then ("-v " +  '"' + verbose_level_default + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_msa_file: ":        Input MSA file in the PSICOV format. A contact score matrix\\nis internally computed using the PSICOV method (Jones et al., 2012).\\nThis option conflicts with the -m option. REQUIRED if -m is not set"
    read_precomputed_matrix: ":        Read a pre-computed residue contact score matrix from file. This\\noption conflicts with the -c option. REQUIRED if -a is not set"
    read_beta_strand: ":        Read beta strand boundaries from file. REQUIRED."
    write_predicted_map: ":        Write predicted beta contact map to file. REQUIRED."
    write_predicted_pairing: ":        Write predicted beta strand pairing to file. REQUIRED."
    minimum_sequence_separation: ":         Minimum sequence separation for parallel strand pairing.\\n0 = no threshold. OPTIONAL, default: 6"
    verbose_level_default: ":         Verbose level, 0/1 (default: 0)."
  }
  output {
    File out_stdout = stdout()
  }
}