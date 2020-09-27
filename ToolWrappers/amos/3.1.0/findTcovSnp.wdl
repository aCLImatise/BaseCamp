version 1.0

task FindTcovSnp {
  input {
    Boolean? prune_quality_discrepancies
    Boolean? amb
    Boolean? min_qv
    Int? min_snp
    Boolean? qvs
    String prefix
  }
  command <<<
    findTcovSnp \
      ~{prefix} \
      ~{if (prune_quality_discrepancies) then "-l" else ""} \
      ~{if (amb) then "-amb" else ""} \
      ~{if (min_qv) then "-minqv" else ""} \
      ~{if defined(min_snp) then ("-minsnp " +  '"' + min_snp + '"') else ""} \
      ~{if (qvs) then "-qvs" else ""}
  >>>
  parameter_meta {
    prune_quality_discrepancies: "Prune low quality discrepancies from report (no qv > 30)"
    amb: "Only print contig positions with an ambiguity code"
    min_qv: "Specify minimum cummulative qv of disagreeing reads"
    min_snp: "minimum number of consistent disagreeing reads"
    qvs: "Print Quality Values stats (max, avg) [ Default: -noqvs ]"
    prefix: ""
  }
  output {
    File out_stdout = stdout()
  }
}