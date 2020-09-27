version 1.0

task Rsembam2readdepth {
  input {
    String sorted_bam_input
    String read_depth_output
  }
  command <<<
    rsem_bam2readdepth \
      ~{sorted_bam_input} \
      ~{read_depth_output}
  >>>
  parameter_meta {
    sorted_bam_input: ""
    read_depth_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}