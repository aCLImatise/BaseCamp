version 1.0

task QueryByCompound.py {
  input {
    String? input_sample_output
    String? list_i_commaseparated
    String? path_output_devstdout
    String? path_midas_database
    String? kegg_compound_identifier
  }
  command <<<
    query_by_compound.py \
      ~{if defined(input_sample_output) then ("-i " +  '"' + input_sample_output + '"') else ""} \
      ~{if defined(list_i_commaseparated) then ("-t " +  '"' + list_i_commaseparated + '"') else ""} \
      ~{if defined(path_output_devstdout) then ("-o " +  '"' + path_output_devstdout + '"') else ""} \
      ~{if defined(path_midas_database) then ("-d " +  '"' + path_midas_database + '"') else ""} \
      ~{if defined(kegg_compound_identifier) then ("-c " +  '"' + kegg_compound_identifier + '"') else ""}
  >>>
  parameter_meta {
    input_sample_output: "Input to sample directories output by run_midas.py Can be a list of directories, a directory containing all samples, or a file with paths See '-t' for details"
    list_i_commaseparated: "list: -i is a comma-separated list (ex: /path/to/samples/sample_1,/path/to/samples/sample_2) dir: -i is a directory containing all samples (ex: /path/to/samples) file: -i is a file containing paths to sample directories (ex: /path/to/sample_paths.txt)"
    path_output_devstdout: "Path to output file (/dev/stdout)"
    path_midas_database: "Path to MIDAS reference database By default, the MIDAS_DB environmental variable is used"
    kegg_compound_identifier: "KEGG Compound identifier"
  }
}