version 1.0

task Bam2gtf.py {
  input {
    String script
    String var_1
    String convert
    String from
    String bam
    String var_5
    String gtf
  }
  command <<<
    bam2gtf.py \
      ~{script} \
      ~{var_1} \
      ~{convert} \
      ~{from} \
      ~{bam} \
      ~{var_5} \
      ~{gtf}
  >>>
  parameter_meta {
    script: ""
    var_1: ""
    convert: ""
    from: ""
    bam: ""
    var_5: ""
    gtf: ""
  }
}