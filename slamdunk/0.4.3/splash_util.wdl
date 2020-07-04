version 1.0

task SplashUtil.conversionrate {
  input {
    String? r
    String? region
    Boolean? rev
    String bam
  }
  command <<<
    splash util.conversionrate \
      ~{bam} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(region) then ("-region " +  '"' + region + '"') else ""} \
      ~{true="-rev" false="" rev}
  >>>
  parameter_meta {
    r: ""
    region: ""
    rev: ""
    bam: "Bam file(s)"
  }
}