version 1.0

task FastutilsStat {
  input {
    String inIn
    String outOut
    Int minMinLen
    Int maxlenMaxlen
  }
  command <<<
    fastutils stat \
      ~{if defined(inIn) then ("--in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(minMinLen) then ("--minLen " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(maxlenMaxlen) then ("--maxLen " +  '"' + maxlenMaxlen + '"') else ""}
  >>>
}