version 1.0

task AbruijnRepeat {
  input {
    String kK
    Int vV
    Boolean dD
    String lL
    String tT
    String? outOutAssembly
  }
  command <<<
    abruijn-repeat \
      ~{outOutAssembly} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""} \
      ~{true="-d" false="" dD} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""}
  >>>
}