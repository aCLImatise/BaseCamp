version 1.0

task MafSplit {
  input {
    String useUseHashedName
  }
  command <<<
    mafSplit \
      ~{if defined(useUseHashedName) then ("-useHashedName " +  '"' + useUseHashedName + '"') else ""}
  >>>
}