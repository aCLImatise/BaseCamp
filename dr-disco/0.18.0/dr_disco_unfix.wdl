version 1.0

task DrDiscoUnfix {
  input {
    File? temp_dir
    String input_alignment_file
    String output_alignment_file
  }
  command <<<
    dr-disco unfix \
      ~{input_alignment_file} \
      ~{output_alignment_file} \
      ~{if defined(temp_dir) then ("--temp-dir " +  '"' + temp_dir + '"') else ""}
  >>>
  parameter_meta {
    temp_dir: "Path in which temp files are stored (default: /tmp)"
    input_alignment_file: ""
    output_alignment_file: ""
  }
}