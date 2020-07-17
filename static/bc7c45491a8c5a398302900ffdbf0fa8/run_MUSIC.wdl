version 1.0

task RunMUSIC.csh {
  input {
    String? arguments
  }
  command <<<
    run_MUSIC.csh \
      ~{arguments}
  >>>
  parameter_meta {
    arguments: ""
  }
}