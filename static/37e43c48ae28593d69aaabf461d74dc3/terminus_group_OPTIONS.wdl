version 1.0

task TerminusGroupOPTIONS {
  input {
    String dirDir
    String outOut
  }
  command <<<
    terminus group OPTIONS \
      ~{if defined(dirDir) then ("--dir " +  '"' + dirDir + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""}
  >>>
}