version 1.0

task QueryByCompoundpy {
  input {
    File? input_sample_output
    String? list_i_commaseparated
    File? path_output_file
    File? path_midas_reference
    String? kegg_compound_identifier
  }
  command <<<
    query_by_compound_py \
      ~{if defined(input_sample_output) then ("-i " +  '"' + input_sample_output + '"') else ""} \
      ~{if defined(list_i_commaseparated) then ("-t " +  '"' + list_i_commaseparated + '"') else ""} \
      ~{if defined(path_output_file) then ("-o " +  '"' + path_output_file + '"') else ""} \
      ~{if defined(path_midas_reference) then ("-d " +  '"' + path_midas_reference + '"') else ""} \
      ~{if defined(kegg_compound_identifier) then ("-c " +  '"' + kegg_compound_identifier + '"') else ""}
  >>>
  parameter_meta {
    input_sample_output: "Input to sample directories output by run_midas.py\\nCan be a list of directories, a directory containing all samples, or a file with paths\\nSee '-t' for details"
    list_i_commaseparated: "list: -i is a comma-separated list (ex: /path/to/samples/sample_1,/path/to/samples/sample_2)\\ndir: -i is a directory containing all samples (ex: /path/to/samples)\\nfile: -i is a file containing paths to sample directories (ex: /path/to/sample_paths.txt)"
    path_output_file: "Path to output file (/dev/stdout)"
    path_midas_reference: "Path to MIDAS reference database\\nBy default, the MIDAS_DB environmental variable is used"
    kegg_compound_identifier: "KEGG Compound identifier"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_file = "${in_path_output_file}"
  }
}