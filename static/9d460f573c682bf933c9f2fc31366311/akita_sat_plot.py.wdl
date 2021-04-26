version 1.0

task AkitaSatPlotpy {
  input {
    Int? figure_width
    Int? length_centered_sequence
    Int? minimum_heatmap_limit
    Directory? output_directory
    Boolean? png
    Int? random_number_generator
    String? sample_n_sequences
    String? stat
    File? file_specifying_indexes
    String scores_file
  }
  command <<<
    akita_sat_plot_py \
      ~{scores_file} \
      ~{if defined(figure_width) then ("-f " +  '"' + figure_width + '"') else ""} \
      ~{if defined(length_centered_sequence) then ("-l " +  '"' + length_centered_sequence + '"') else ""} \
      ~{if defined(minimum_heatmap_limit) then ("-m " +  '"' + minimum_heatmap_limit + '"') else ""} \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""} \
      ~{if (png) then "--png" else ""} \
      ~{if defined(random_number_generator) then ("-r " +  '"' + random_number_generator + '"') else ""} \
      ~{if defined(sample_n_sequences) then ("-s " +  '"' + sample_n_sequences + '"') else ""} \
      ~{if defined(stat) then ("--stat " +  '"' + stat + '"') else ""} \
      ~{if defined(file_specifying_indexes) then ("-t " +  '"' + file_specifying_indexes + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0"
  }
  parameter_meta {
    figure_width: "Figure width [Default: 20]"
    length_centered_sequence: "Length of centered sequence to mutate [Default: 300]"
    minimum_heatmap_limit: "Minimum heatmap limit [Default: 0.1]"
    output_directory: "Output directory [Default: sat_plot]"
    png: "Write PNG as opposed to PDF [Default: False]"
    random_number_generator: "Random number generator seed [Default: 1]"
    sample_n_sequences: "Sample N sequences from the set [Default:none]"
    stat: "SAD stat to display [Default: sqdiff]"
    file_specifying_indexes: "File specifying target indexes and labels in table format"
    scores_file: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}