version 1.0

task GuidescanCuttingEfficiencyProcesser {
  input {
    Directory? database_directory
    File? filename_of_sgrna_database_cutting_efficiencyscores
    File? fast_a_file_path
    Int? amino
    Int? peptide
    Directory? database_directory_two
    Int? database_name_two
    String var_7
  }
  command <<<
    guidescan_cutting_efficiency_processer \
      ~{var_7} \
      ~{if defined(database_directory) then ("--database_directory " +  '"' + database_directory + '"') else ""} \
      ~{if defined(filename_of_sgrna_database_cutting_efficiencyscores) then ("--database_name " +  '"' + filename_of_sgrna_database_cutting_efficiencyscores + '"') else ""} \
      ~{if defined(fast_a_file_path) then ("--fasta_filepath " +  '"' + fast_a_file_path + '"') else ""} \
      ~{if defined(amino) then ("--amino " +  '"' + amino + '"') else ""} \
      ~{if defined(peptide) then ("--peptide " +  '"' + peptide + '"') else ""} \
      ~{if defined(database_directory_two) then ("--database_directory2 " +  '"' + database_directory_two + '"') else ""} \
      ~{if defined(database_name_two) then ("--database_name2 " +  '"' + database_name_two + '"') else ""}
  >>>
  parameter_meta {
    database_directory: "absolute filepath to directory hosting sgRNA database\\nwith no cutting efficiency scores"
    filename_of_sgrna_database_cutting_efficiencyscores: "filename of sgRNA database with no cutting efficiency\\nscores"
    fast_a_file_path: "absolute filepath to organism FASTA file. Index for\\nFASTA should also be present in same directory (.fai).\\nMust be single aggregate FASTA file for organism"
    amino: "amino acid information to be used in cutting\\nefficiency. Default -1 indicating to not use amino\\nacid information"
    peptide: "peptide information to be used in cutting efficiency.\\nDefault -1 indicating to not use peptide information"
    database_directory_two: "absolute filepath to directory hosting sgRNA database\\nwith cutting efficency scores already included and\\ngenerated with all the same run parameters as another\\ndatabase except for -d. This parameter, coupled with\\n-n2, allows for the transfer of cutting efficiency\\nscores between two sgRNA databases that differ only in\\nhow many mismatches off-targets are enumerated to"
    database_name_two: "filename of sgRNA database with cutting efficiency\\nscores already included and generated with all the\\nsame run parameters as another database except for -d.\\nThis parameter, coupled with -d2, allows for the\\ntransfer of cutting efficiency scores between two\\nsgRNA databases that differ only in how many\\nmismatches off-targets are enumerated to\\n"
    var_7: "[-f FASTA_FILEPATH] [-a AMINO]"
  }
  output {
    File out_stdout = stdout()
  }
}