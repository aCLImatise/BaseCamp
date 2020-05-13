version 1.0

task ToAmos {
  input {
    String useUse
    String scaffoldScaffold
    String scaffoldScaffold
    String readRead
    String readRead
    String tigrTigrStyle
    Int startStart
  }
  command <<<
    toAmos \
      ~{if defined(useUse) then ("- use " +  '"' + useUse + '"') else ""} \
      ~{if defined(scaffoldScaffold) then ("- scaffold " +  '"' + scaffoldScaffold + '"') else ""} \
      ~{if defined(scaffoldScaffold) then ("- scaffold " +  '"' + scaffoldScaffold + '"') else ""} \
      ~{if defined(readRead) then ("- read " +  '"' + readRead + '"') else ""} \
      ~{if defined(readRead) then ("- read " +  '"' + readRead + '"') else ""} \
      ~{if defined(tigrTigrStyle) then ("- TIGR-style " +  '"' + tigrTigrStyle + '"') else ""} \
      ~{if defined(startStart) then ("- start " +  '"' + startStart + '"') else ""}
  >>>
}