version 1.0

task FusioncatchertoCG {
  input {
    String? input_format
    Directory? data_directory
    File? output_filename_stdout
    Boolean? v
  }
  command <<<
    fusioncatcher_to_CG \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(data_directory) then ("--data-directory " +  '"' + data_directory + '"') else ""} \
      ~{if defined(output_filename_stdout) then ("--output " +  '"' + output_filename_stdout + '"') else ""} \
      ~{if (v) then "-V" else ""}
  >>>
  parameter_meta {
    input_format: "File type of the file to convert"
    data_directory: "FusionCatcher's data dir\\n(/opt/fusioncatcher/data/ensembl_v...)"
    output_filename_stdout: "output filename; '-' for stdout"
    v: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_filename_stdout = "${in_output_filename_stdout}"
  }
}