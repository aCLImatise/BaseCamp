version 1.0

task SamtoolsView {
  input {
    String in_dot_bam
  }
  command <<<
    samtools view \
      ~{in_dot_bam}
  >>>
  parameter_meta {
    in_dot_bam: ""
  }
}