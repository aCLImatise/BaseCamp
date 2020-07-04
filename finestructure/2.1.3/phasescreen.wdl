version 1.0

task Phasescreen.pl {
  input {
    String perl
    String phases_screen_do_tpl
    String phase_file
    String output_phase_file
  }
  command <<<
    phasescreen.pl \
      ~{perl} \
      ~{phases_screen_do_tpl} \
      ~{phase_file} \
      ~{output_phase_file}
  >>>
  parameter_meta {
    perl: ""
    phases_screen_do_tpl: ""
    phase_file: ""
    output_phase_file: ""
  }
}