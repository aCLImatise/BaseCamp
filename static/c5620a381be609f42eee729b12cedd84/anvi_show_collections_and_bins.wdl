version 1.0

task AnviShowCollectionsAndBins {
  input {
    String pP
  }
  command <<<
    anvi-show-collections-and-bins \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""}
  >>>
}