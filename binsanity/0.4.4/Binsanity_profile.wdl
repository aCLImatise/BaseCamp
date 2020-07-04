version 1.0

task BinsanityProfile {
  input {
    String? specify_fasta_file
    String? identify_location_indexed
    String? identify_name_output
    String? transform
    String? specify_number_threads
    String? specify_directory_output
  }
  command <<<
    Binsanity-profile \
      ~{if defined(specify_fasta_file) then ("-i " +  '"' + specify_fasta_file + '"') else ""} \
      ~{if defined(identify_location_indexed) then ("-s " +  '"' + identify_location_indexed + '"') else ""} \
      ~{if defined(identify_name_output) then ("-c " +  '"' + identify_name_output + '"') else ""} \
      ~{if defined(transform) then ("--transform " +  '"' + transform + '"') else ""} \
      ~{if defined(specify_number_threads) then ("-T " +  '"' + specify_number_threads + '"') else ""} \
      ~{if defined(specify_directory_output) then ("-o " +  '"' + specify_directory_output + '"') else ""}
  >>>
  parameter_meta {
    specify_fasta_file: "Specify fasta file being profiled"
    identify_location_indexed: "identify location of BAM files BAM files should be indexed and sorted"
    identify_name_output: "Identify name of output file for coverage information"
    transform: "Indicate what type of data transformation you want in the final file [Default:log]: scale --> Scaled by multiplying by 100 and log transforming log --> Log transform None --> Raw Coverage Values X5 --> Multiplication by 5 X10 --> Multiplication by 10 X100 --> Multiplication by 100 SQR --> Square root We recommend using a scaled log transformation for initial testing. Other transformations can be useful on a case by case basis"
    specify_number_threads: "Specify Number of Threads For Feature Counts [Default: 1]"
    specify_directory_output: "Specify directory for output files to be deposited [Default: Working Directory]"
  }
}