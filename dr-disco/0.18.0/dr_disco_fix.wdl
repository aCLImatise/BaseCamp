version 1.0

task DrdiscoFix {
  input {
    File? temp_dir
    String input_alignment_file
    String output_alignment_file
  }
  command <<<
    dr_disco fix \
      ~{input_alignment_file} \
      ~{output_alignment_file} \
      ~{if defined(temp_dir) then ("--temp-dir " +  '"' + temp_dir + '"') else ""}
  >>>
  parameter_meta {
    temp_dir: "Path in which temp files are stored (default: /tmp)"
    input_alignment_file: ""
    output_alignment_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}