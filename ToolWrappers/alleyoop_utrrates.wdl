version 1.0

task AlleyoopUtrrates {
  input {
    Boolean? m
    String? mq
    File? r
    String? o
    String bam
  }
  command <<<
    alleyoop utrrates \
      ~{bam} \
      ~{if (m) then "-m" else ""} \
      ~{if defined(mq) then ("-mq " +  '"' + mq + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    m: ""
    mq: ""
    r: ""
    o: ""
    bam: "Bam file(s)"
  }
  output {
    File out_stdout = stdout()
  }
}