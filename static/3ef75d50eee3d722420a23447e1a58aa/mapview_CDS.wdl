version 1.0

task MapviewCDS {
  input {
    String x1X1
    String x2X2
    Boolean gG
    Boolean iI
    Boolean irIr
  }
  command <<<
    mapview CDS \
      ~{if defined(x1X1) then ("-x1 " +  '"' + x1X1 + '"') else ""} \
      ~{if defined(x2X2) then ("-x2 " +  '"' + x2X2 + '"') else ""} \
      ~{true="-g" false="" gG} \
      ~{true="-I" false="" iI} \
      ~{true="-Ir" false="" irIr}
  >>>
}