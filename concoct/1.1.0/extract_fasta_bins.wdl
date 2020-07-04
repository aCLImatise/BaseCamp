version 1.0

task ExtractFastaBins.py {
  input {
    String? output_path
    String fast_a_file
    String cluster_file
  }
  command <<<
    extract_fasta_bins.py \
      ~{fast_a_file} \
      ~{cluster_file} \
      ~{if defined(output_path) then ("--output_path " +  '"' + output_path + '"') else ""}
  >>>
  parameter_meta {
    output_path: "Directory where files will be printed"
    fast_a_file: "Input Fasta file."
    cluster_file: "Concoct output cluster file"
  }
}