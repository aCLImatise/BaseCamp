version 1.0

task FcGraphToContig {
  input {
    Boolean improperImproperPCtg
    Boolean properProperACtg
    String pPReadsFastAFn
    String sgSgEdgesListFn
    String utgUtgDataFn
    String ctgCtgPathsFn
  }
  command <<<
    fc_graph_to_contig \
      ~{true="--improper-p-ctg" false="" improperImproperPCtg} \
      ~{true="--proper-a-ctg" false="" properProperACtg} \
      ~{if defined(pPReadsFastAFn) then ("--preads-fasta-fn " +  '"' + pPReadsFastAFn + '"') else ""} \
      ~{if defined(sgSgEdgesListFn) then ("--sg-edges-list-fn " +  '"' + sgSgEdgesListFn + '"') else ""} \
      ~{if defined(utgUtgDataFn) then ("--utg-data-fn " +  '"' + utgUtgDataFn + '"') else ""} \
      ~{if defined(ctgCtgPathsFn) then ("--ctg-paths-fn " +  '"' + ctgCtgPathsFn + '"') else ""}
  >>>
}