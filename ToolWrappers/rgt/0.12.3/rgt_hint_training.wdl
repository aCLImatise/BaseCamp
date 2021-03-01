version 1.0

task RgthintTraining {
  input {
    File? reads_file
    Int? annotate_file
    File? bias_table
    Boolean? semi_supervised
    File? signal_file
    Int? num_states
    File? output_location
    String? output_prefix
    String reads
  }
  command <<<
    rgt_hint training \
      ~{reads} \
      ~{if defined(reads_file) then ("--reads-file " +  '"' + reads_file + '"') else ""} \
      ~{if defined(annotate_file) then ("--annotate-file " +  '"' + annotate_file + '"') else ""} \
      ~{if defined(bias_table) then ("--bias-table " +  '"' + bias_table + '"') else ""} \
      ~{if (semi_supervised) then "--semi-supervised" else ""} \
      ~{if defined(signal_file) then ("--signal-file " +  '"' + signal_file + '"') else ""} \
      ~{if defined(num_states) then ("--num-states " +  '"' + num_states + '"') else ""} \
      ~{if defined(output_location) then ("--output-location " +  '"' + output_location + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reads_file: "The BAM file containing the DNase-seq or ATAC-seq"
    annotate_file: "A annotate file containing all the states."
    bias_table: ",FILE1_R"
    semi_supervised: "If used, HMM model will be trained using semi-\\nsupervised learning."
    signal_file: "The txt file containing the DNase-seq or ATAC-seq\\nsignals used to train HMM model."
    num_states: "The states number of HMM model."
    output_location: "Path where the output bias table files will be\\nwritten."
    output_prefix: "The prefix for results files.\\n"
    reads: "--chrom STRING        The name of chromosome used to train HMM"
  }
  output {
    File out_stdout = stdout()
    File out_output_location = "${in_output_location}"
  }
}