version 1.0

task ParseSdrfConvertmaxquant {
  input {
    File? sd_rf
    File? fast_a_file_path
    Int? match_between_runs
    Float? protein_fdr
    Directory? temp_folder
    Directory? raw_folder
    Int? num_threads
    File? output_one
    Int? output_two
    String identifications
  }
  command <<<
    parse_sdrf convert_maxquant \
      ~{identifications} \
      ~{if defined(sd_rf) then ("--sdrf " +  '"' + sd_rf + '"') else ""} \
      ~{if defined(fast_a_file_path) then ("--fastafilepath " +  '"' + fast_a_file_path + '"') else ""} \
      ~{if defined(match_between_runs) then ("--matchbetweenruns " +  '"' + match_between_runs + '"') else ""} \
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
    match_between_runs: "via matching between runs to boosts number of"
    protein_fdr: "protein score = product of peptide PEPs (one\\nfor each sequence)"
    temp_folder: "temporary folder: place on SSD (if possible)\\nfor faster search, please use /"
    raw_folder: "raw data folder,please use \\"
    num_threads: "each thread needs at least 2 GB of RAM,number\\nof threads should be ≤ number of logical cores\\navailable (otherwise, MaxQuant can crash)"
    output_one: "parameters .xml file  output file path"
    output_two: "maxquant experimental design .txt file"
    identifications: "-pef, --peptidefdr FLOAT     posterior error probability calculation based"
  }
  output {
    File out_stdout = stdout()
    File out_output_one = "${in_output_one}"
  }
}