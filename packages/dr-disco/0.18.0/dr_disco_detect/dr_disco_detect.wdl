version 1.0

task DrdiscoDetect {
  input {
    Int? min_e_score
    String bam_input_file
    String output_file
  }
  command <<<
    dr_disco detect \
      ~{bam_input_file} \
      ~{output_file} \
      ~{if defined(min_e_score) then ("--min-e-score " +  '"' + min_e_score + '"') else ""}
  >>>
  parameter_meta {
    min_e_score: "Minimal score to initiate pulling sub-graphs\\n(larger numbers boost performance but result in\\nsuboptimal results) [default=8]"
    bam_input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}