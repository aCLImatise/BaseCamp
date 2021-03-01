version 1.0

task MockinbirdFlipMateOutputBam {
  input {
    String mock_in_bird
    String flip_mate
    String input_bam
    String output_bam
  }
  command <<<
    mockinbird flip_mate output_bam \
      ~{mock_in_bird} \
      ~{flip_mate} \
      ~{input_bam} \
      ~{output_bam}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mock_in_bird: ""
    flip_mate: ""
    input_bam: ""
    output_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}