version 1.0

task ProcessClusterOutputsh {
  input {
    File? fileb_file_directory
  }
  command <<<
    process_cluster_output_sh \
      ~{if defined(fileb_file_directory) then ("-i " +  '"' + fileb_file_directory + '"') else ""}
  >>>
  parameter_meta {
    fileb_file_directory: "file\\n-b file with coverage info\\n-o output directory (optional). By default the file is replaced in the same location\\n-c percentage value to filter >= values. If not supplied, all records will be outputted\\n-s string to ad at the end of the outputted file (list of accession numbers)\\n-v version\\n-h display usage message"
  }
  output {
    File out_stdout = stdout()
    File out_fileb_file_directory = "${in_fileb_file_directory}"
  }
}