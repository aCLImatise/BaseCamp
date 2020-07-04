version 1.0

task Processfrag.sh {
  input {
    String process_frags_dots_h
    File file
  }
  command <<<
    processfrag.sh \
      ~{process_frags_dots_h} \
      ~{file}
  >>>
  parameter_meta {
    process_frags_dots_h: ""
    file: ""
  }
}