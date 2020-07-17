version 1.0

task Chromopainter2chromopainterv2.pl {
  input {
    String phase_file
    String output_phase_file
  }
  command <<<
    chromopainter2chromopainterv2.pl \
      ~{phase_file} \
      ~{output_phase_file}
  >>>
  parameter_meta {
    phase_file: ""
    output_phase_file: ""
  }
}