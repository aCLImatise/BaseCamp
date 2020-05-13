version 1.0

task FastutilsLength {
  input {
    String inIn
    String outOut
    Int minMinLen
    Int maxlenMaxlen
    Boolean totalTotal
  }
  command <<<
    fastutils length \
      ~{if defined(inIn) then ("--in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(minMinLen) then ("--minLen " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(maxlenMaxlen) then ("--maxLen " +  '"' + maxlenMaxlen + '"') else ""} \
      ~{true="--total" false="" totalTotal}
  >>>
}