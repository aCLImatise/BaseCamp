version 1.0

task Proteinortho6.pl {
  input {
    String? step
    String fast_a_one
    String fast_a_two
    String? fast_a_dot_dot_dot
  }
  command <<<
    proteinortho6.pl \
      ~{fast_a_one} \
      ~{fast_a_two} \
      ~{fast_a_dot_dot_dot} \
      ~{if defined(step) then ("-step " +  '"' + step + '"') else ""}
  >>>
  parameter_meta {
    step: "to finalize"
    fast_a_one: ""
    fast_a_two: ""
    fast_a_dot_dot_dot: ""
  }
}