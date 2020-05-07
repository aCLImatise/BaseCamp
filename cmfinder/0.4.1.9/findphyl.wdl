version 1.0

task Findphyl {
  input {
    String limitLimit
    String? rateRateFile
    String? colColFile
  }
  command <<<
    findphyl \
      ~{rateRateFile} \
      ~{if defined(limitLimit) then ("--limit " +  '"' + limitLimit + '"') else ""} \
      ~{colColFile}
  >>>
}