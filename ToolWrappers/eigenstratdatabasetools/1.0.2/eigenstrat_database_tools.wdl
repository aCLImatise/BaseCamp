version 1.0

task EigenstratDatabaseTools {
  input {
    File? desired_input_file
    File? desired_output_file
    File? suffix
    File? check
    Boolean? extract
    Boolean? remove
    File? sample_list
    String? sample
  }
  command <<<
    eigenstrat_database_tools \
      ~{if defined(desired_input_file) then ("--Input " +  '"' + desired_input_file + '"') else ""} \
      ~{if defined(desired_output_file) then ("--Output " +  '"' + desired_output_file + '"') else ""} \
      ~{if defined(suffix) then ("--Suffix " +  '"' + suffix + '"') else ""} \
      ~{if defined(check) then ("--Check " +  '"' + check + '"') else ""} \
      ~{if (extract) then "--Extract" else ""} \
      ~{if (remove) then "--Remove" else ""} \
      ~{if defined(sample_list) then ("--SampleList " +  '"' + sample_list + '"') else ""} \
      ~{if defined(sample) then ("--Sample " +  '"' + sample + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/eigenstratdatabasetools:1.0.2--0"
  }
  parameter_meta {
    desired_input_file: "The desired input file prefix. Input files are assumed\\nto be <INPUT PREFIX>.geno, <INPUT PREFIX>.snp and\\n<INPUT PREFIX>.ind ."
    desired_output_file: "The desired output file prefix. Three output files are\\ncreated, <OUTPUT FILES PREFIX>.geno , <OUTPUT FILES\\nPREFIX>.snp and <OUTPUT FILES PREFIX>.ind ."
    suffix: "The suffix (if any) that follows .geno/.snp/.ind in\\nthe input files. For example, specifying '-s .txt'\\nwill treat <INPUT PREFIX>.{geno,snp,ind}.txt as the\\ndesired input files."
    check: "Check the -i .ind file and the second .ind file for\\nduplicate individuals. Population assignment and/or\\nindividual sex are not checked, only individual names.\\nNames are case sensitive."
    extract: "Extract the selected individuals from the EigenStrat\\ndatabase, creating a new set of EigenStrat files with\\nthe selected individuals only."
    remove: "Remove the selected individuals from the EigenStrat\\ndatabase, creating a new set of EigenStrat files\\nwithout the selected individuals."
    sample_list: "A list of samples to be Extracted (-E) or Removed (-R)\\nfrom the database. Can be a list of individual names\\n(1 per line), or the output of duplicate check (-C).\\nRequired with -E or -R. Mutually exclusive with -S."
    sample: "A samples to be Extracted (-E) or Removed (-R) from\\nthe database. Can be called multiple times. Required\\nwith -E or -R. Mutually exclusive with -L."
  }
  output {
    File out_stdout = stdout()
    File out_desired_output_file = "${in_desired_output_file}"
  }
}