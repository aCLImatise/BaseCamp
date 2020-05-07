version 1.0

task AirrToolsValidate {
  input {
    Array[String]+ aA
  }
  command <<<
    airr-tools validate \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""}
  >>>
}