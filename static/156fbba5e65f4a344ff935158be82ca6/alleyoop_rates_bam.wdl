version 1.0

task AlleyoopRatesBam {
  input {
    String? t
    String? mq
    File? r
    String? o
    String alley_oop
    String rates
  }
  command <<<
    alleyoop rates bam \
      ~{alley_oop} \
      ~{rates} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(mq) then ("-mq " +  '"' + mq + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    t: ""
    mq: ""
    r: ""
    o: ""
    alley_oop: ""
    rates: ""
  }
  output {
    File out_stdout = stdout()
  }
}