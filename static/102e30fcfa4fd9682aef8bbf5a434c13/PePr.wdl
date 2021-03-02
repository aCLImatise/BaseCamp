version 1.0

task PePr {
  input {
    File? parameter_file
    Int? chip_one
    Int? input_one
    Int? chip_two
    Int? input_two
    File? file_format
    Int? shift_size
    Int? window_size
    Boolean? diff
    String? name
    Float? threshold
    String? peak_type
    Int? num_processors
    Directory? input_directory
    Directory? output_directory
    String? normalization
    Int? keep_max_dup
    String pep_r_post_process
  }
  command <<<
    PePr \
      ~{pep_r_post_process} \
      ~{if defined(parameter_file) then ("--parameter-file " +  '"' + parameter_file + '"') else ""} \
      ~{if defined(chip_one) then ("--chip1 " +  '"' + chip_one + '"') else ""} \
      ~{if defined(input_one) then ("--input1 " +  '"' + input_one + '"') else ""} \
      ~{if defined(chip_two) then ("--chip2 " +  '"' + chip_two + '"') else ""} \
      ~{if defined(input_two) then ("--input2 " +  '"' + input_two + '"') else ""} \
      ~{if defined(file_format) then ("--file-format " +  '"' + file_format + '"') else ""} \
      ~{if defined(shift_size) then ("--shiftsize " +  '"' + shift_size + '"') else ""} \
      ~{if defined(window_size) then ("--windowsize " +  '"' + window_size + '"') else ""} \
      ~{if (diff) then "--diff" else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(peak_type) then ("--peaktype " +  '"' + peak_type + '"') else ""} \
      ~{if defined(num_processors) then ("--num-processors " +  '"' + num_processors + '"') else ""} \
      ~{if defined(input_directory) then ("--input-directory " +  '"' + input_directory + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(normalization) then ("--normalization " +  '"' + normalization + '"') else ""} \
      ~{if defined(keep_max_dup) then ("--keep-max-dup " +  '"' + keep_max_dup + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    parameter_file: "provide a file that contain the parameters"
    chip_one: "chip1 file names separated by comma"
    input_one: "input1 file names separated by comma"
    chip_two: "chip2 file names separated by comma"
    input_two: "input2 file names separated by comma"
    file_format: "bed, sam, bam, sampe, bampe..."
    shift_size: "Half the fragment size."
    window_size: "Window sizes"
    diff: "Perform differential binding instead of peak-calling"
    name: "the experimental name. NA if none provided"
    threshold: "p-value threshold. Default 1e-5."
    peak_type: "sharp or broad. Default broad."
    num_processors: "number of cores for use."
    input_directory: "where the data files are. Absolute path recommended."
    output_directory: "where you want the output files to be"
    normalization: "Normalization method. inter-group, intra-group, scale\\nor no. Must manually specify for differential binding\\nanalysis."
    keep_max_dup: "maximum number of reads to keep at each position.\\nif not specified, will not remove any duplicate."
    pep_r_post_process: "Options:"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}