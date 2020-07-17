version 1.0

task RsemBam2readdepth {
  input {
    String sorted_bam_input
    String read_depth_output
  }
  command <<<
    rsem-bam2readdepth \
      ~{sorted_bam_input} \
      ~{read_depth_output}
  >>>
  parameter_meta {
    sorted_bam_input: ""
    read_depth_output: ""
  }
}