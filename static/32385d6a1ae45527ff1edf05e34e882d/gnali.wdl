version 1.0

task Gnali {
  input {
    String? input_file
    String? output_dir
    Boolean? force
  }
  command <<<
    gnali \
      ~{if defined(input_file) then ("--input_file " +  '"' + input_file + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{true="--force" false="" force}
  >>>
  parameter_meta {
    input_file: "File of genes to test. Accepted formats: csv, txt"
    output_dir: "Name of output directory. Default: results-ID/"
    force: "Force existing output folder to be overwritten"
  }
}