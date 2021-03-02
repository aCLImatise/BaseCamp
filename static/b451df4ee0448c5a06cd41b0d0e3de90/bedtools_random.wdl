version 1.0

task BedtoolsRandom {
  input {
    Boolean? length_intervals_generate
    Boolean? number_intervals_generate
    Boolean? seed
    String? g
  }
  command <<<
    bedtools random \
      ~{if (length_intervals_generate) then "-l" else ""} \
      ~{if (number_intervals_generate) then "-n" else ""} \
      ~{if (seed) then "-seed" else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    length_intervals_generate: "The length of the intervals to generate.\\n- Default = 100.\\n- (INTEGER)"
    number_intervals_generate: "The number of intervals to generate.\\n- Default = 1,000,000.\\n- (INTEGER)"
    seed: "Supply an integer seed for the shuffling.\\n- By default, the seed is chosen automatically.\\n- (INTEGER)"
    g: ""
  }
  output {
    File out_stdout = stdout()
  }
}