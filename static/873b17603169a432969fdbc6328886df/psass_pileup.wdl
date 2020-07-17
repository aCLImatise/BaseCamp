version 1.0

task PsassPileup {
  input {
    String alignment_files_dot_dot_dot
  }
  command <<<
    psass pileup \
      ~{alignment_files_dot_dot_dot}
  >>>
  parameter_meta {
    alignment_files_dot_dot_dot: ""
  }
}