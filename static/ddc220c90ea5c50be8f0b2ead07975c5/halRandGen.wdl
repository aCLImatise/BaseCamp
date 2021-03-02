version 1.0

task HalRandGen {
  input {
    Boolean? preset
    Int? seed
    String hal_stats
    File path_of_ouput_hal_alignment_file
  }
  command <<<
    halRandGen \
      ~{hal_stats} \
      ~{path_of_ouput_hal_alignment_file} \
      ~{if (preset) then "--preset" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    preset: "<small, medium, big, large> [medum]"
    seed: "[system time]"
    hal_stats: ""
    path_of_ouput_hal_alignment_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}