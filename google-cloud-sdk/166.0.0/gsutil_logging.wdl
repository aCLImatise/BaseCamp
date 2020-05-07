version 1.0

task GsutilLogging {
  input {
    String bB
    String oO
    String? setSet
    String? onOn
    String? urlUrl
  }
  command <<<
    gsutil logging \
      ~{setSet} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{onOn} \
      ~{urlUrl}
  >>>
}