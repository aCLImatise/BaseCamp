version 1.0

task Bam2gtfpy {
  input {
    String script
    String to
    String convert
    String from
    String bam
    String gtf
  }
  command <<<
    bam2gtf_py \
      ~{script} \
      ~{to} \
      ~{convert} \
      ~{from} \
      ~{bam} \
      ~{gtf}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    script: ""
    to: ""
    convert: ""
    from: ""
    bam: ""
    gtf: ""
  }
  output {
    File out_stdout = stdout()
  }
}