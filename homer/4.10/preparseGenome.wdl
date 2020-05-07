version 1.0

task PreparseGenome.pl {
  input {
    Boolean windowWindow
    Boolean maxMax
    Boolean minMinInc
    Directory prePreParsedDir
  }
  command <<<
    preparseGenome.pl \
      ~{true="-window" false="" windowWindow} \
      ~{true="-max" false="" maxMax} \
      ~{true="-minInc" false="" minMinInc} \
      ~{if defined(prePreParsedDir) then ("-preparsedDir " +  '"' + prePreParsedDir + '"') else ""}
  >>>
}