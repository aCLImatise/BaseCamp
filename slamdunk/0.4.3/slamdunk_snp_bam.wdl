version 1.0

task SlamdunkSnpBam {
  input {
    String? o
    String? r
    String? c
    String? f
    String? t
    String slam_dunk
    String snp
  }
  command <<<
    slamdunk snp bam \
      ~{slam_dunk} \
      ~{snp} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    o: ""
    r: ""
    c: ""
    f: ""
    t: ""
    slam_dunk: ""
    snp: ""
  }
}