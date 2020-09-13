version 1.0

task ScrambleFastapl {
  input {
    Boolean? number_defulat_input
    String input_dot_fast_a
  }
  command <<<
    scrambleFasta_pl \
      ~{input_dot_fast_a} \
      ~{if (number_defulat_input) then "-n" else ""}
  >>>
  parameter_meta {
    number_defulat_input: "<#> (Number of scrambled output sequences, defulat: 5x input)"
    input_dot_fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}