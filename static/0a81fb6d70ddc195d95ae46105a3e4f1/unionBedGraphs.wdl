version 1.0

task UnionBedGraphs {
  input {
    Boolean headerHeader
    Boolean namesNames
    Boolean gG
    Boolean emptyEmpty
    String fillerFiller
    Boolean examplesExamples
  }
  command <<<
    unionBedGraphs \
      ~{true="-header" false="" headerHeader} \
      ~{true="-names" false="" namesNames} \
      ~{true="-g" false="" gG} \
      ~{true="-empty" false="" emptyEmpty} \
      ~{if defined(fillerFiller) then ("-filler " +  '"' + fillerFiller + '"') else ""} \
      ~{true="-examples" false="" examplesExamples}
  >>>
}