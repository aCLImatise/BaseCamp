version 1.0

task VerifyMappingQuality.pl {
  input {
    Boolean? path_write_report
    Boolean? out_strains
    String? bam
  }
  command <<<
    verify_mapping_quality.pl \
      ~{true="--output" false="" path_write_report} \
      ~{true="--out_strains" false="" out_strains} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""}
  >>>
  parameter_meta {
    path_write_report: "Path to write human readable report"
    out_strains: "Path to write list of strain(s) one per line for filter File collection tool or vcf2snvalignment itself"
    bam: ""
  }
}