version 1.0

task GuidescanCuttingSpecificityProcesser {
  input {
    Directory? database_directory
    File? database_name
    File? km_ers_file
    File? fast_a_file_path
    Directory? database_directory_two
    Int? database_name_two
  }
  command <<<
    guidescan_cutting_specificity_processer \
      ~{if defined(database_directory) then ("--database_directory " +  '"' + database_directory + '"') else ""} \
      ~{if defined(database_name) then ("--database_name " +  '"' + database_name + '"') else ""} \
      ~{if defined(km_ers_file) then ("--kmers_file " +  '"' + km_ers_file + '"') else ""} \
      ~{if defined(fast_a_file_path) then ("--fasta_filepath " +  '"' + fast_a_file_path + '"') else ""} \
      ~{if defined(database_directory_two) then ("--database_directory2 " +  '"' + database_directory_two + '"') else ""} \
      ~{if defined(database_name_two) then ("--database_name2 " +  '"' + database_name_two + '"') else ""}
  >>>
  parameter_meta {
    database_directory: "absolute filepath to directory hosting sgRNA database\\nwith no cutting specificity scores"
    database_name: "filename of sgRNA database with no cutting specificity\\nscores"
    km_ers_file: "absolute filepath to directory hosting either\\nX_all_kmers.txt.gz or X_all_kmers_counted.txt"
    fast_a_file_path: "absolute filepath to organism FASTA file. Index for\\nFASTA should also be present in same directory (.fai).\\nMust be single aggregate FASTA file for organism"
    database_directory_two: "absolute filepath to directory hosting sgRNA database\\nwith cutting specificity scores already included and\\ngenerated with all the same run parameters as another\\ndatabase except for -d. This parameter, coupled with\\n-n2, allows for the transfer of cutting efficiency\\nscores between two sgRNA databases that differ only in\\nhow many mismatches off-targets are enumerated to"
    database_name_two: "filename of sgRNA database with cutting specificity\\nscores already included and generated with all the\\nsame run parameters as another database except for -d.\\nThis parameter, coupled with -d2, allows for the\\ntransfer of cutting efficiency scores between two\\nsgRNA databases that differ only in how many\\nmismatches off-targets are enumerated to\\n"
  }
  output {
    File out_stdout = stdout()
  }
}