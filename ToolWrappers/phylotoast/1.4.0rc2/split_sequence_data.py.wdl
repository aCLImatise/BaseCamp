version 1.0

task SplitSequenceDatapy {
  input {
    File? input_fast_a_fn
    Int? num_output_files
    String? output_dir
  }
  command <<<
    split_sequence_data_py \
      ~{if defined(input_fast_a_fn) then ("--input_fasta_fn " +  '"' + input_fast_a_fn + '"') else ""} \
      ~{if defined(num_output_files) then ("--num_output_files " +  '"' + num_output_files + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_fast_a_fn: "The sequence data file to be split up."
    num_output_files: "The number of files the input data should be split\\ninto."
    output_dir: "The location to write the split data files."
  }
  output {
    File out_stdout = stdout()
  }
}