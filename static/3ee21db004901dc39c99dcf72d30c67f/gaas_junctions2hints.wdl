version 1.0

task GaasJunctions2hints.pl {
  input {
    String? in_file
    String perl
    String junctions_two_hints_do_tpl
  }
  command <<<
    gaas_junctions2hints.pl \
      ~{perl} \
      ~{junctions_two_hints_do_tpl} \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""}
  >>>
  parameter_meta {
    in_file: ""
    perl: ""
    junctions_two_hints_do_tpl: ""
  }
}