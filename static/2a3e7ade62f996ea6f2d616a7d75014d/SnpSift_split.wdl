version 1.0

task SnpSiftSplit {
  input {
    Boolean jJ
    String lL
    String? defaultDefault
  }
  command <<<
    SnpSift split \
      ~{defaultDefault} \
      ~{true="-j" false="" jJ} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""}
  >>>
}