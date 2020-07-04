version 1.0

task FindTcovSnp {
  input {
    Boolean? amb
    Boolean? min_qv
    String? min_snp
    Boolean? qvs
    String prefix
  }
  command <<<
    findTcovSnp \
      ~{prefix} \
      ~{true="-amb" false="" amb} \
      ~{true="-minqv" false="" min_qv} \
      ~{if defined(min_snp) then ("-minsnp " +  '"' + min_snp + '"') else ""} \
      ~{true="-qvs" false="" qvs}
  >>>
  parameter_meta {
    amb: "Only print contig positions with an ambiguity code"
    min_qv: "Specify minimum cummulative qv of disagreeing reads"
    min_snp: "minimum number of consistent disagreeing reads"
    qvs: "Print Quality Values stats (max, avg) [ Default: -noqvs ]"
    prefix: ""
  }
}