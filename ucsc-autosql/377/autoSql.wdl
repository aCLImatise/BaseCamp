version 1.0

task AutoSql {
  input {
    String defaultDefaultZeros
    String generateGenerate
    String generateGenerate
  }
  command <<<
    autoSql \
      ~{if defined(defaultDefaultZeros) then ("-defaultZeros " +  '"' + defaultDefaultZeros + '"') else ""} \
      ~{if defined(generateGenerate) then ("- generate " +  '"' + generateGenerate + '"') else ""} \
      ~{if defined(generateGenerate) then ("- generate " +  '"' + generateGenerate + '"') else ""}
  >>>
}