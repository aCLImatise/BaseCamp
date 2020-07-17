version 1.0

task Phasesubsample.pl {
  input {
    String from
    String to
    String phase_file
    String output_phase_file
  }
  command <<<
    phasesubsample.pl \
      ~{from} \
      ~{to} \
      ~{phase_file} \
      ~{output_phase_file}
  >>>
  parameter_meta {
    from: ""
    to: ""
    phase_file: ""
    output_phase_file: ""
  }
}