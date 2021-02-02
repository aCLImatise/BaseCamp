version 1.0

task Glam2mask {
  input {
    File? output_file_stdout
    Boolean? _mask_character
  }
  command <<<
    glam2mask \
      ~{if (output_file_stdout) then "-o" else ""} \
      ~{if (_mask_character) then "-x" else ""}
  >>>
  parameter_meta {
    output_file_stdout: ": output file (stdout)"
    _mask_character: ": mask character (x)"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_stdout = "${in_output_file_stdout}"
  }
}