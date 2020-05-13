version 1.0

task Dart {
  input {
    Int tT
    Boolean fF
    Boolean f2F2
    Boolean oO
    Boolean boBo
    Boolean jJ
    Boolean mM
    Boolean pP
    Boolean uniqueUnique
    Boolean intronIntron
    Boolean vV
  }
  command <<<
    dart \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="-f2" false="" f2F2} \
      ~{true="-o" false="" oO} \
      ~{true="-bo" false="" boBo} \
      ~{true="-j" false="" jJ} \
      ~{true="-m" false="" mM} \
      ~{true="-p" false="" pP} \
      ~{true="-unique" false="" uniqueUnique} \
      ~{true="-intron" false="" intronIntron} \
      ~{true="-v" false="" vV}
  >>>
}