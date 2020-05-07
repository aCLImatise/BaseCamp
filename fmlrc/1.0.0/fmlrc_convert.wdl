version 1.0

task FmlrcConvert {
  input {
    Boolean vV
    Boolean fF
    String iI
    String? outOutCompMbSwtNpy
  }
  command <<<
    fmlrc-convert \
      ~{outOutCompMbSwtNpy} \
      ~{true="-v" false="" vV} \
      ~{true="-f" false="" fF} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""}
  >>>
}