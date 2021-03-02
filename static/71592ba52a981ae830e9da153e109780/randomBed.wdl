version 1.0

task RandomBed {
  input {
    Boolean? length_intervals_generate
    Boolean? number_intervals_generate
    Boolean? seed
    String? g
    String bed_tools
    String random
  }
  command <<<
    randomBed \
      ~{bed_tools} \
      ~{random} \
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
    bed_tools: ""
    random: ""
  }
  output {
    File out_stdout = stdout()
  }
}