version 1.0

task MotifPredict {
  input {
    String? input_file
    String? model_filename
    String? output_dir
  }
  command <<<
    motif predict \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(model_filename) then ("--model-filename " +  '"' + model_filename + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Path to a FASTA file. (default: None)"
    model_filename: "File name for serialized model object. (default: motif.model)"
    output_dir: "Path to output directory. (default: out)"
  }
}