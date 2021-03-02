version 1.0

task TaxonFilterpyBlastnBuildDb {
  input {
    File? output_file_prefix
    String? loglevel
    Directory? tmp_dir
    Boolean? tmp_dir_keep
    String input_fast_a
    String output_directory
  }
  command <<<
    taxon_filter_py blastn_build_db \
      ~{input_fast_a} \
      ~{output_directory} \
      ~{if defined(output_file_prefix) then ("--outputFilePrefix " +  '"' + output_file_prefix + '"') else ""} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp_dir " +  '"' + tmp_dir + '"') else ""} \
      ~{if (tmp_dir_keep) then "--tmp_dirKeep" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_file_prefix: "Prefix for the output file name (default: inputFasta\\nname, sans \\\".fasta\\\" extension)"
    loglevel: "Verboseness of output. [default: DEBUG]"
    tmp_dir: "Base directory for temp files. [default: /tmp]"
    tmp_dir_keep: "Keep the tmp_dir if an exception occurs while running.\\nDefault is to delete all temp files at the end, even\\nif there's a failure.\\n"
    input_fast_a: "Location of the input FASTA file"
    output_directory: "Location for the output files"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_prefix = "${in_output_file_prefix}"
  }
}