version 1.0

task ExtractFastaBinspy {
  input {
    File? output_path
    String fast_a_file
    String cluster_file
  }
  command <<<
    extract_fasta_bins_py \
      ~{fast_a_file} \
      ~{cluster_file} \
      ~{if defined(output_path) then ("--output_path " +  '"' + output_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_path: "Directory where files will be printed\\n"
    fast_a_file: "Input Fasta file."
    cluster_file: "Concoct output cluster file"
  }
  output {
    File out_stdout = stdout()
    File out_output_path = "${in_output_path}"
  }
}