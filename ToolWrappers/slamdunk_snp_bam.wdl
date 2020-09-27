version 1.0

task SlamdunkSnpBam {
  input {
    String? t
    String? f
    String? c
    String? r
    String? o
    String slam_dunk
    String snp
  }
  command <<<
    slamdunk snp bam \
      ~{slam_dunk} \
      ~{snp} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    t: ""
    f: ""
    c: ""
    r: ""
    o: ""
    slam_dunk: ""
    snp: ""
  }
  output {
    File out_stdout = stdout()
  }
}