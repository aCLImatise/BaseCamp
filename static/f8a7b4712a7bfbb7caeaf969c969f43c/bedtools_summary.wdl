version 1.0

task BedtoolsSummary {
  input {
    String? g
    String? i
    Int chr_one
    Int chr_two
    Int chr_one_eight_gl_zero_zero_zero_two_zero_seven_random
  }
  command <<<
    bedtools summary \
      ~{chr_one} \
      ~{chr_two} \
      ~{chr_one_eight_gl_zero_zero_zero_two_zero_seven_random} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    g: ""
    i: ""
    chr_one: "249250621"
    chr_two: "243199373"
    chr_one_eight_gl_zero_zero_zero_two_zero_seven_random: "4262"
  }
  output {
    File out_stdout = stdout()
  }
}