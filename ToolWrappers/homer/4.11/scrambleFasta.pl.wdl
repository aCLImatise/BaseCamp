version 1.0

task ScrambleFastapl {
  input {
    Boolean? number_scrambled_output
    String input_dot_fast_a
  }
  command <<<
    scrambleFasta_pl \
      ~{input_dot_fast_a} \
      ~{if (number_scrambled_output) then "-n" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    number_scrambled_output: "<#> (Number of scrambled output sequences, defulat: 5x input)"
    input_dot_fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}