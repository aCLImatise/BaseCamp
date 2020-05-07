version 1.0

task Rb {
  input {
    Boolean vV
    Boolean bB
    String argsArgs
    String cmdCmd
    String fileFile
    String setoptionSetoption
  }
  command <<<
    rb \
      ~{true="-v" false="" vV} \
      ~{true="-b" false="" bB} \
      ~{if defined(argsArgs) then ("--args " +  '"' + argsArgs + '"') else ""} \
      ~{if defined(cmdCmd) then ("--cmd " +  '"' + cmdCmd + '"') else ""} \
      ~{if defined(fileFile) then ("--file " +  '"' + fileFile + '"') else ""} \
      ~{if defined(setoptionSetoption) then ("--setOption " +  '"' + setoptionSetoption + '"') else ""}
  >>>
}