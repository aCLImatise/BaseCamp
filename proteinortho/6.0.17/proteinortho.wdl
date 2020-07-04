version 1.0

task Proteinortho {
  input {
    String? step
    String protein_ortho_six_do_tpl
    String fast_a_one
    String fast_a_two
    String? fast_a_dot_dot_dot
  }
  command <<<
    proteinortho \
      ~{protein_ortho_six_do_tpl} \
      ~{fast_a_one} \
      ~{fast_a_two} \
      ~{fast_a_dot_dot_dot} \
      ~{if defined(step) then ("-step " +  '"' + step + '"') else ""}
  >>>
  parameter_meta {
    step: "to finalize"
    protein_ortho_six_do_tpl: ""
    fast_a_one: ""
    fast_a_two: ""
    fast_a_dot_dot_dot: ""
  }
}