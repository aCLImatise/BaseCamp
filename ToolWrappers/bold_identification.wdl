version 1.0

task BoldIdentification {
  input {
    File? input_file_name
    File? input_file_format
    String? outfile
    String? database_to_search
    Int? how_many_first
    Int? maximum_submission_time
    Boolean? continuous_mode_jump
    Boolean? debug_mode_output
    Float zero_dot_zero_dot_two_five
  }
  command <<<
    bold_identification \
      ~{zero_dot_zero_dot_two_five} \
      ~{if defined(input_file_name) then ("-i " +  '"' + input_file_name + '"') else ""} \
      ~{if defined(input_file_format) then ("-f " +  '"' + input_file_format + '"') else ""} \
      ~{if defined(outfile) then ("-o " +  '"' + outfile + '"') else ""} \
      ~{if defined(database_to_search) then ("-d " +  '"' + database_to_search + '"') else ""} \
      ~{if defined(how_many_first) then ("-n " +  '"' + how_many_first + '"') else ""} \
      ~{if defined(maximum_submission_time) then ("-r " +  '"' + maximum_submission_time + '"') else ""} \
      ~{if (continuous_mode_jump) then "-c" else ""} \
      ~{if (debug_mode_output) then "-D" else ""}
  >>>
  parameter_meta {
    input_file_name: "input file name"
    input_file_format: "input file format [fasta]"
    outfile: "outfile"
    database_to_search: "database to search [COX1]"
    how_many_first: "how many first top hits will be output. [1]"
    maximum_submission_time: "Maximum submission time for a sequence, useful for\\nhandling TimeOutException. [4]"
    continuous_mode_jump: "continuous mode, jump over the ones already in \\\"-o\\\"\\nfile, will resubmit all the remained. use \\\"-cc\\\" to\\nalso jump over the ones in \\\"*.NoBoldMatchError.fasta\\\"\\nfile. [0]"
    debug_mode_output: "debug mode output [False]"
    zero_dot_zero_dot_two_five: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}