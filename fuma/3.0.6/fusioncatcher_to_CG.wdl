version 1.0

task FusioncatcherToCG {
  input {
    String? input_format
    String? data_directory
    String? output_filename_stdout
    Boolean? v
    String input_file
  }
  command <<<
    fusioncatcher-to-CG \
      ~{input_file} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(data_directory) then ("--data-directory " +  '"' + data_directory + '"') else ""} \
      ~{if defined(output_filename_stdout) then ("--output " +  '"' + output_filename_stdout + '"') else ""} \
      ~{true="-V" false="" v}
  >>>
  parameter_meta {
    input_format: "File type of the file to convert"
    data_directory: "FusionCatcher's data dir (/opt/fusioncatcher/data/ensembl_v...)"
    output_filename_stdout: "output filename; '-' for stdout"
    v: ""
    input_file: "File to convert"
  }
}