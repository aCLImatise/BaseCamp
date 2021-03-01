version 1.0

task EigenstratSnpCoverage {
  input {
    File? desired_input_file
    File? suffix
    File? filepath_where_be
    File? json
  }
  command <<<
    eigenstrat_snp_coverage \
      ~{if defined(desired_input_file) then ("--Input " +  '"' + desired_input_file + '"') else ""} \
      ~{if defined(suffix) then ("--Suffix " +  '"' + suffix + '"') else ""} \
      ~{if defined(filepath_where_be) then ("--Output " +  '"' + filepath_where_be + '"') else ""} \
      ~{if defined(json) then ("--json " +  '"' + json + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/eigenstratdatabasetools:1.0.2--0"
  }
  parameter_meta {
    desired_input_file: "The desired input file prefix. Input files are assumed\\nto be <INPUT PREFIX>.geno, <INPUT PREFIX>.snp and\\n<INPUT PREFIX>.ind ."
    suffix: "The suffix (if any) that follows .geno/.snp/.ind in\\nthe input files. For example, specifying '-s .txt'\\nwill treat <INPUT PREFIX>.{geno,snp,ind}.txt as the\\ndesired input files."
    filepath_where_be: "The filepath where the output table should be saved.\\nOmit to print to stdout."
    json: "Create additional json formatted output file named\\n<JSON OUTPUT FILEPATH> ."
  }
  output {
    File out_stdout = stdout()
    File out_filepath_where_be = "${in_filepath_where_be}"
    File out_json = "${in_json}"
  }
}