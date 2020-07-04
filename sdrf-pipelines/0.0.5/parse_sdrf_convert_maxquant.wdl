version 1.0

task ParseSdrfConvertMaxquant {
  input {
    String? sd_rf
    String? fast_a_file_path
    String? match_between_runs
    Float? peptide_fdr
    Float? protein_fdr
    String? temp_folder
    String? raw_folder
    Int? num_threads
    String? output_one
    String? output_two
  }
  command <<<
    parse_sdrf convert-maxquant \
      ~{if defined(sd_rf) then ("--sdrf " +  '"' + sd_rf + '"') else ""} \
      ~{if defined(fast_a_file_path) then ("--fastafilepath " +  '"' + fast_a_file_path + '"') else ""} \
      ~{if defined(match_between_runs) then ("--matchbetweenruns " +  '"' + match_between_runs + '"') else ""} \
      ~{if defined(peptide_fdr) then ("--peptidefdr " +  '"' + peptide_fdr + '"') else ""} \
      ~{if defined(protein_fdr) then ("--proteinfdr " +  '"' + protein_fdr + '"') else ""} \
      ~{if defined(temp_folder) then ("--tempfolder " +  '"' + temp_folder + '"') else ""} \
      ~{if defined(raw_folder) then ("--raw_folder " +  '"' + raw_folder + '"') else ""} \
      ~{if defined(num_threads) then ("--numthreads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(output_one) then ("--output1 " +  '"' + output_one + '"') else ""} \
      ~{if defined(output_two) then ("--output2 " +  '"' + output_two + '"') else ""}
  >>>
  parameter_meta {
    sd_rf: "SDRF file"
    fast_a_file_path: "protein database file path,please use /"
    match_between_runs: "via matching between runs to boosts number of identifications"
    peptide_fdr: "posterior error probability calculation based on target-decoy search"
    protein_fdr: "protein score = product of peptide PEPs (one for each sequence)"
    temp_folder: "temporary folder: place on SSD (if possible) for faster search, please use /"
    raw_folder: "raw data folder,please use \"
    num_threads: "each thread needs at least 2 GB of RAM,number of threads should be ≤ number of logical cores available (otherwise, MaxQuant can crash)"
    output_one: "parameters .xml file  output file path"
    output_two: "maxquant experimental design .txt file"
  }
}