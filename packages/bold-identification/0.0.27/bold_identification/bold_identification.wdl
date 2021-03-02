version 1.0

task BoldIdentification {
  input {
    File? input_file_name
    File? input_file_format
    String? outfile_prefix
    String? database_to_search
    Int? how_many_first
    Int? maximum_submission_time
    Boolean? continuous_mode_jump
    Boolean? chimera_check_purpose
    Int? length_subsequences_chimera
    Boolean? debug_mode_output
    Float zero_dot_zero_dot_two_seven
  }
  command <<<
    bold_identification \
      ~{zero_dot_zero_dot_two_seven} \
      ~{if defined(input_file_name) then ("-i " +  '"' + input_file_name + '"') else ""} \
      ~{if defined(input_file_format) then ("-f " +  '"' + input_file_format + '"') else ""} \
      ~{if defined(outfile_prefix) then ("-o " +  '"' + outfile_prefix + '"') else ""} \
      ~{if defined(database_to_search) then ("-d " +  '"' + database_to_search + '"') else ""} \
      ~{if defined(how_many_first) then ("-n " +  '"' + how_many_first + '"') else ""} \
      ~{if defined(maximum_submission_time) then ("-r " +  '"' + maximum_submission_time + '"') else ""} \
      ~{if (continuous_mode_jump) then "-c" else ""} \
      ~{if (chimera_check_purpose) then "-C" else ""} \
      ~{if defined(length_subsequences_chimera) then ("-q " +  '"' + length_subsequences_chimera + '"') else ""} \
      ~{if (debug_mode_output) then "-D" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bold-identification:0.0.27--py_0"
  }
  parameter_meta {
    input_file_name: "input file name"
    input_file_format: "input file format [fasta]"
    outfile_prefix: "outfile prefix"
    database_to_search: "database to search [COX1]"
    how_many_first: "how many first top hits will be output. [1]"
    maximum_submission_time: "Maximum submission time for a sequence, useful for\\nhandling TimeOutException. [4]"
    continuous_mode_jump: "continuous mode, jump over the ones already in \\\"-o\\\"\\nfile, will resubmit all the remained. use \\\"-cc\\\" to\\nalso jump over the ones in \\\"*.NoBoldMatchError.fasta\\\"\\nfile."
    chimera_check_purpose: "For chimera check purpose. If set, for each sequence,\\nI will query the BOLD database using the subsequences\\nfrom 5'- and 3'-ends with a length of '-q <int>' bp,\\nrespectively"
    length_subsequences_chimera: "The length of subsequences for chimera check [400]"
    debug_mode_output: "debug mode output [False]"
    zero_dot_zero_dot_two_seven: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}