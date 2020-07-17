version 1.0

task EnergyPlot {
  input {
    String folding_save_file
    String output_file
  }
  command <<<
    EnergyPlot \
      ~{folding_save_file} \
      ~{output_file}
  >>>
  parameter_meta {
    folding_save_file: ""
    output_file: ""
  }
}