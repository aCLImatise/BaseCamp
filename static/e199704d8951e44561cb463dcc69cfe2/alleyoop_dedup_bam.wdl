version 1.0

task AlleyoopDedupBam {
  input {
    String? t
    String? tc
    String? o
    String alley_oop
    String ded_up
  }
  command <<<
    alleyoop dedup bam \
      ~{alley_oop} \
      ~{ded_up} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(tc) then ("-tc " +  '"' + tc + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    t: ""
    tc: ""
    o: ""
    alley_oop: ""
    ded_up: ""
  }
  output {
    File out_stdout = stdout()
  }
}