version 1.0

task Binsanityprofile {
  input {
    File? specify_fasta_file
    String? identify_location_indexed
    File? identify_name_output
    File? transform
    Int? specify_number_threads
    Directory? specify_directory_deposited
  }
  command <<<
    Binsanity_profile \
      ~{if defined(specify_fasta_file) then ("-i " +  '"' + specify_fasta_file + '"') else ""} \
      ~{if defined(identify_location_indexed) then ("-s " +  '"' + identify_location_indexed + '"') else ""} \
      ~{if defined(identify_name_output) then ("-c " +  '"' + identify_name_output + '"') else ""} \
      ~{if defined(transform) then ("--transform " +  '"' + transform + '"') else ""} \
      ~{if defined(specify_number_threads) then ("-T " +  '"' + specify_number_threads + '"') else ""} \
      ~{if defined(specify_directory_deposited) then ("-o " +  '"' + specify_directory_deposited + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    specify_fasta_file: "Specify fasta file being profiled"
    identify_location_indexed: "identify location of BAM files\\nBAM files should be indexed and sorted"
    identify_name_output: "Identify name of output file for coverage information"
    transform: "Indicate what type of data transformation you want in the final file [Default:log]:\\nscale --> Scaled by multiplying by 100 and log transforming\\nlog --> Log transform\\nNone --> Raw Coverage Values\\nX5 --> Multiplication by 5\\nX10 --> Multiplication by 10\\nX100 --> Multiplication by 100\\nSQR --> Square root\\nWe recommend using a scaled log transformation for initial testing.\\nOther transformations can be useful on a case by case basis"
    specify_number_threads: "Specify Number of Threads For Feature Counts [Default: 1]"
    specify_directory_deposited: "Specify directory for output files to be deposited [Default: Working Directory]"
  }
  output {
    File out_stdout = stdout()
    File out_identify_name_output = "${in_identify_name_output}"
    Directory out_specify_directory_deposited = "${in_specify_directory_deposited}"
  }
}