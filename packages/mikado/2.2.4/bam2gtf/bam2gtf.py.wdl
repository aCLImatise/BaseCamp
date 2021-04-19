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
    docker: "quay.io/biocontainers/mikado:2.2.4--py38h803c66d_0"
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