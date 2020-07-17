version 1.0

task CreateMetaplots.bash {
  input {
    String ribo_dot_bam
    String bed_file
    String name
  }
  command <<<
    create_metaplots.bash \
      ~{ribo_dot_bam} \
      ~{bed_file} \
      ~{name}
  >>>
  parameter_meta {
    ribo_dot_bam: ""
    bed_file: ""
    name: ""
  }
}