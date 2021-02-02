version 1.0

task SynthReadGenOutputFile {
  input {
    String synth_read_gen
    String input_file
    String output_file
  }
  command <<<
    synthReadGen outputFile \
      ~{synth_read_gen} \
      ~{input_file} \
      ~{output_file}
  >>>
  parameter_meta {
    synth_read_gen: ""
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}