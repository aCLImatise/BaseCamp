version 1.0

task FumaListToBooleanList {
  input {
    String? output_filename_stdout
    String? t
    String? f
    String input_file
  }
  command <<<
    fuma-list-to-boolean-list \
      ~{input_file} \
      ~{if defined(output_filename_stdout) then ("--output " +  '"' + output_filename_stdout + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    output_filename_stdout: "output filename; '-' for stdout"
    t: ""
    f: ""
    input_file: "FuMa List output"
  }
}