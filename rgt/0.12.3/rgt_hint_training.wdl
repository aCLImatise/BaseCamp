version 1.0

task RgtHintTraining {
  input {
    String? annotate_file
    File? bias_table
    Boolean? semi_supervised
    File? signal_file
    Int? num_states
    File? output_location
    String? output_prefix
    String? organism
    File? reads_file
  }
  command <<<
    rgt-hint training \
      ~{if defined(annotate_file) then ("--annotate-file " +  '"' + annotate_file + '"') else ""} \
      ~{if defined(bias_table) then ("--bias-table " +  '"' + bias_table + '"') else ""} \
      ~{true="--semi-supervised" false="" semi_supervised} \
      ~{if defined(signal_file) then ("--signal-file " +  '"' + signal_file + '"') else ""} \
      ~{if defined(num_states) then ("--num-states " +  '"' + num_states + '"') else ""} \
      ~{if defined(output_location) then ("--output-location " +  '"' + output_location + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(reads_file) then ("--reads-file " +  '"' + reads_file + '"') else ""}
  >>>
  parameter_meta {
    annotate_file: "A annotate file containing all the states."
    bias_table: ",FILE1_R"
    semi_supervised: "If used, HMM model will be trained using semi- supervised learning."
    signal_file: "The txt file containing the DNase-seq or ATAC-seq signals used to train HMM model."
    num_states: "The states number of HMM model."
    output_location: "Path where the output bias table files will be written."
    output_prefix: "The prefix for results files."
    organism: ""
    reads_file: ""
  }
}