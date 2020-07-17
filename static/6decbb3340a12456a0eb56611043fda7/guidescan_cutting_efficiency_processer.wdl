version 1.0

task GuidescanCuttingEfficiencyProcesser {
  input {
    String? database_directory
    String? database_name
    String? fast_a_file_path
    String? amino
    String? peptide
    String? database_directory_two
    String? database_name_two
  }
  command <<<
    guidescan_cutting_efficiency_processer \
      ~{if defined(database_directory) then ("--database_directory " +  '"' + database_directory + '"') else ""} \
      ~{if defined(database_name) then ("--database_name " +  '"' + database_name + '"') else ""} \
      ~{if defined(fast_a_file_path) then ("--fasta_filepath " +  '"' + fast_a_file_path + '"') else ""} \
      ~{if defined(amino) then ("--amino " +  '"' + amino + '"') else ""} \
      ~{if defined(peptide) then ("--peptide " +  '"' + peptide + '"') else ""} \
      ~{if defined(database_directory_two) then ("--database_directory2 " +  '"' + database_directory_two + '"') else ""} \
      ~{if defined(database_name_two) then ("--database_name2 " +  '"' + database_name_two + '"') else ""}
  >>>
  parameter_meta {
    database_directory: "absolute filepath to directory hosting sgRNA database with no cutting efficiency scores"
    database_name: "filename of sgRNA database with no cutting efficiency scores"
    fast_a_file_path: "absolute filepath to organism FASTA file. Index for FASTA should also be present in same directory (.fai). Must be single aggregate FASTA file for organism"
    amino: "amino acid information to be used in cutting efficiency. Default -1 indicating to not use amino acid information"
    peptide: "peptide information to be used in cutting efficiency. Default -1 indicating to not use peptide information"
    database_directory_two: "absolute filepath to directory hosting sgRNA database with cutting efficency scores already included and generated with all the same run parameters as another database except for -d. This parameter, coupled with -n2, allows for the transfer of cutting efficiency scores between two sgRNA databases that differ only in how many mismatches off-targets are enumerated to"
    database_name_two: "filename of sgRNA database with cutting efficiency scores already included and generated with all the same run parameters as another database except for -d. This parameter, coupled with -d2, allows for the transfer of cutting efficiency scores between two sgRNA databases that differ only in how many mismatches off-targets are enumerated to"
  }
}