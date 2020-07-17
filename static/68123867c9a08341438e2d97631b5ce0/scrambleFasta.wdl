version 1.0

task ScrambleFasta.pl {
  input {
    Boolean? number_scrambled_output
    String input_dot_fast_a
  }
  command <<<
    scrambleFasta.pl \
      ~{input_dot_fast_a} \
      ~{true="-n" false="" number_scrambled_output}
  >>>
  parameter_meta {
    number_scrambled_output: "<#> (Number of scrambled output sequences, defulat: 5x input)"
    input_dot_fast_a: ""
  }
}