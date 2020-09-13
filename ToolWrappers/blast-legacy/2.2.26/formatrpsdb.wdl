version 1.0

task Formatrpsdb {
  input {
    Boolean? title_database_file
    Boolean? input_file_containing
    File? logfile_name_optionaldefault
    Boolean? create_index_files
    Boolean? database_volume_size
    Boolean? scoremat_files_binary
    Boolean? threshold_extending_hits
    Boolean? base_name_output
    Boolean? scoremats_contain_residue
    Boolean? gap_opening_penalty
    Boolean? gap_extension_penalty
    Boolean? underlying_score_matrix
  }
  command <<<
    formatrpsdb \
      ~{if (title_database_file) then "-t" else ""} \
      ~{if (input_file_containing) then "-i" else ""} \
      ~{if (logfile_name_optionaldefault) then "-l" else ""} \
      ~{if (create_index_files) then "-o" else ""} \
      ~{if (database_volume_size) then "-v" else ""} \
      ~{if (scoremat_files_binary) then "-b" else ""} \
      ~{if (threshold_extending_hits) then "-f" else ""} \
      ~{if (base_name_output) then "-n" else ""} \
      ~{if (scoremats_contain_residue) then "-S" else ""} \
      ~{if (gap_opening_penalty) then "-G" else ""} \
      ~{if (gap_extension_penalty) then "-E" else ""} \
      ~{if (underlying_score_matrix) then "-U" else ""}
  >>>
  parameter_meta {
    title_database_file: "Title for database file [String]  Optional"
    input_file_containing: "Input file containing list of ASN.1 Scoremat filenames [File In]"
    logfile_name_optionaldefault: "Logfile name [File Out]  Optional\\ndefault = formatrpsdb.log"
    create_index_files: "Create index files for database [T/F]  Optional\\ndefault = F"
    database_volume_size: "Database volume size in millions of letters [Integer]  Optional\\ndefault = 0\\nrange from 0 to ?"
    scoremat_files_binary: "Scoremat files are binary [T/F]  Optional\\ndefault = F"
    threshold_extending_hits: "Threshold for extending hits for RPS database [Real]  Optional\\ndefault = 11.0"
    base_name_output: "Base name of output database (same as input file if not specified) [String]  Optional"
    scoremats_contain_residue: "For scoremats that contain only residue frequencies, the scaling factor to apply when creating PSSMs [Real]  Optional\\ndefault = 100.0"
    gap_opening_penalty: "The gap opening penalty (if not present in the scoremat) [Integer]  Optional\\ndefault = 11"
    gap_extension_penalty: "The gap extension penalty (if not present in the scoremat) [Integer]  Optional\\ndefault = 1"
    underlying_score_matrix: "Underlying score matrix (if not present in the scoremat) [String]  Optional\\ndefault = BLOSUM62\\n"
  }
  output {
    File out_stdout = stdout()
    File out_logfile_name_optionaldefault = "${in_logfile_name_optionaldefault}"
  }
}