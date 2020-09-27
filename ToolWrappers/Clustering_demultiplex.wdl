version 1.0

task ClusteringDemultiplex {
  input {
    String demultiplex
    String? id_mapping
    String sample_mapping
    String result_file
    String tab_index
    String output_directory
  }
  command <<<
    Clustering demultiplex \
      ~{demultiplex} \
      ~{id_mapping} \
      ~{sample_mapping} \
      ~{result_file} \
      ~{tab_index} \
      ~{output_directory}
  >>>
  parameter_meta {
    demultiplex: ""
    id_mapping: ""
    sample_mapping: ""
    result_file: ""
    tab_index: ""
    output_directory: ""
  }
  output {
    File out_stdout = stdout()
  }
}