version 1.0

task Elink {
  input {
    Boolean relatedRelated
    Boolean targetTarget
    Boolean nameName
    Boolean dbDb
    Boolean idId
    Boolean cmdCmd
    Boolean modeMode
    Boolean holdingHolding
    Boolean citedCited
    Boolean citesCites
    Boolean batchBatch
    Boolean labelLabel
    String? neighborNeighbor
    String? neighborNeighborScore
    String? aACheck
    String? nNCheck
    String? lLCheck
    String? lLLinks
    String? lLLinksLib
    String? prPrLinks
  }
  command <<<
    elink \
      ~{neighborNeighbor} \
      ~{true="-related" false="" relatedRelated} \
      ~{true="-target" false="" targetTarget} \
      ~{true="-name" false="" nameName} \
      ~{true="-db" false="" dbDb} \
      ~{true="-id" false="" idId} \
      ~{true="-cmd" false="" cmdCmd} \
      ~{true="-mode" false="" modeMode} \
      ~{true="-holding" false="" holdingHolding} \
      ~{true="-cited" false="" citedCited} \
      ~{true="-cites" false="" citesCites} \
      ~{true="-batch" false="" batchBatch} \
      ~{true="-label" false="" labelLabel} \
      ~{neighborNeighborScore} \
      ~{aACheck} \
      ~{nNCheck} \
      ~{lLCheck} \
      ~{lLLinks} \
      ~{lLLinksLib} \
      ~{prPrLinks}
  >>>
}