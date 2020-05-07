version 1.0

task GenerateReport.py {
  input {
    String oO
    Boolean diploidDiploid
    String? generateGenerateReport
    String? prefixPrefix
  }
  command <<<
    generate_report.py \
      ~{generateGenerateReport} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="--diploid" false="" diploidDiploid} \
      ~{prefixPrefix}
  >>>
}