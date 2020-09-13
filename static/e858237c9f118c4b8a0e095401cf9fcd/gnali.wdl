version 1.0

task Gnali {
  input {
    File? input_file
    Directory? output_dir
    Directory? force
  }
  command <<<
    gnali \
      ~{if defined(input_file) then ("--input_file " +  '"' + input_file + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  parameter_meta {
    input_file: "File of genes to test. Accepted formats: csv, txt"
    output_dir: "Name of output directory. Default: results-ID/"
    force: "Force existing output folder to be overwritten"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
    Directory out_force = "${in_force}"
  }
}