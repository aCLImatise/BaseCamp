version 1.0

task Purge {
  input {
    File file
    String score
  }
  command <<<
    purge \
      ~{file} \
      ~{score}
  >>>
  parameter_meta {
    file: ""
    score: ""
  }
}