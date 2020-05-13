version 1.0

task AirrToolsMerge {
  input {
    String oO
    Boolean dropDrop
    Array[String]+ aA
  }
  command <<<
    airr-tools merge \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="--drop" false="" dropDrop} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""}
  >>>
}