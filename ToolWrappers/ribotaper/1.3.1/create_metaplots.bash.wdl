version 1.0

task CreateMetaplotsbash {
  input {
    String ribo_dot_bam
    String bed_file
    String name
  }
  command <<<
    create_metaplots_bash \
      ~{ribo_dot_bam} \
      ~{bed_file} \
      ~{name}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ribo_dot_bam: ""
    bed_file: ""
    name: ""
  }
  output {
    File out_stdout = stdout()
  }
}