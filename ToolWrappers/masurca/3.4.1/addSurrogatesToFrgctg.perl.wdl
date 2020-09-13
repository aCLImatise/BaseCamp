version 1.0

task AddSurrogatesToFrgctgperl {
  input {
    String? help_dot_asm
    String? help_dot_pos_map_do_tut_glen
    String? help_dotposmapdotfrgutg
    String? help_dotposmapdotutgctg
    String? help_dotposmapdotfrgctg
  }
  command <<<
    addSurrogatesToFrgctg_perl \
      ~{if defined(help_dot_asm) then ("--help.asm " +  '"' + help_dot_asm + '"') else ""} \
      ~{if defined(help_dot_pos_map_do_tut_glen) then ("--help.posmap.utglen " +  '"' + help_dot_pos_map_do_tut_glen + '"') else ""} \
      ~{if defined(help_dotposmapdotfrgutg) then ("--help.posmap.frgutg " +  '"' + help_dotposmapdotfrgutg + '"') else ""} \
      ~{if defined(help_dotposmapdotutgctg) then ("--help.posmap.utgctg " +  '"' + help_dotposmapdotutgctg + '"') else ""} \
      ~{if defined(help_dotposmapdotfrgctg) then ("--help.posmap.frgctg " +  '"' + help_dotposmapdotfrgctg + '"') else ""}
  >>>
  parameter_meta {
    help_dot_asm: "'t exist!"
    help_dot_pos_map_do_tut_glen: "'t exist!"
    help_dotposmapdotfrgutg: "'t exist!"
    help_dotposmapdotutgctg: "'t exist!"
    help_dotposmapdotfrgctg: "'t exist!"
  }
  output {
    File out_stdout = stdout()
  }
}