version 1.0

task WigCorrelate {
  input {
    String clampClampMax
    String? oneOneWig
    String? nNWig
  }
  command <<<
    wigCorrelate \
      ~{oneOneWig} \
      ~{if defined(clampClampMax) then ("-clampMax " +  '"' + clampClampMax + '"') else ""} \
      ~{nNWig}
  >>>
}