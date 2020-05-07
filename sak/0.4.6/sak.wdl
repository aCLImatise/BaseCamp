version 1.0

task Sak {
  input {
    Boolean versionVersionCheck
    String outOutPath
    Boolean revRevComp
    Int maxMaxLength
    Int lineLineLength
  }
  command <<<
    sak \
      ~{if defined(versionVersionCheck) then ("--version-check " +  '"' + versionVersionCheck + '"') else ""} \
      ~{if defined(outOutPath) then ("--out-path " +  '"' + outOutPath + '"') else ""} \
      ~{true="--revcomp" false="" revRevComp} \
      ~{if defined(maxMaxLength) then ("--max-length " +  '"' + maxMaxLength + '"') else ""} \
      ~{if defined(lineLineLength) then ("--line-length " +  '"' + lineLineLength + '"') else ""}
  >>>
}