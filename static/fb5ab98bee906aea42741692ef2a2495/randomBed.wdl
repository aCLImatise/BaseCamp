version 1.0

task RandomBed {
  input {
    Boolean? length_generate_default
    Boolean? number_generate_default
    Boolean? seed
    String? g
    Int chr_one
    Int chr_two
    Int chr_one_eight_gl_zero_zero_zero_two_zero_seven_random
  }
  command <<<
    randomBed \
      ~{chr_one} \
      ~{chr_two} \
      ~{chr_one_eight_gl_zero_zero_zero_two_zero_seven_random} \
      ~{if (length_generate_default) then "-l" else ""} \
      ~{if (number_generate_default) then "-n" else ""} \
      ~{if (seed) then "-seed" else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""}
  >>>
  parameter_meta {
    length_generate_default: "The length of the intervals to generate.\\n- Default = 100.\\n- (INTEGER)"
    number_generate_default: "The number of intervals to generate.\\n- Default = 1,000,000.\\n- (INTEGER)"
    seed: "Supply an integer seed for the shuffling.\\n- By default, the seed is chosen automatically.\\n- (INTEGER)"
    g: ""
    chr_one: "249250621"
    chr_two: "243199373"
    chr_one_eight_gl_zero_zero_zero_two_zero_seven_random: "4262"
  }
  output {
    File out_stdout = stdout()
  }
}