version 1.0

task FilterVep.pl {
  input {
    String? arguments
  }
  command <<<
    filter_vep.pl \
      ~{arguments}
  >>>
  parameter_meta {
    arguments: ""
  }
}