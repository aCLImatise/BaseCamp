version 1.0

task Glimmer3 {
  input {
    File sequence_file
    File icm_file
    String tag
  }
  command <<<
    glimmer3 \
      ~{sequence_file} \
      ~{icm_file} \
      ~{tag}
  >>>
  parameter_meta {
    sequence_file: ""
    icm_file: ""
    tag: ""
  }
  output {
    File out_stdout = stdout()
  }
}