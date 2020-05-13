version 1.0

task MakeKtaxonomy.py {
  input {
    String nodesNodes
    String namesNames
    String seqid2taxidSeqid2taxid
    String outputOutput
  }
  command <<<
    make_ktaxonomy.py \
      ~{if defined(nodesNodes) then ("--nodes " +  '"' + nodesNodes + '"') else ""} \
      ~{if defined(namesNames) then ("--names " +  '"' + namesNames + '"') else ""} \
      ~{if defined(seqid2taxidSeqid2taxid) then ("--seqid2taxid " +  '"' + seqid2taxidSeqid2taxid + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}