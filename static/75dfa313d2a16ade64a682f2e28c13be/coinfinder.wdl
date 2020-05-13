version 1.0

task Coinfinder {
  input {
    String inputInput
    String inputInputRoarY
    String phylogenyPhylogeny
    String associateAssociate
    String dissociateDissociate
    String levelLevel
    String bonferroniBonferroni
    String noNoCorrection
    String fractionFraction
    String greaterGreater
    String lessLess
    String twoTwoTailed
    String numNumCores
    String verboseVerbose
    String filterFilter
    String upUpFilThreshold
    String filFilThreshold
    String queryQuery
    String testTest
    String allAll
    String outputOutput
  }
  command <<<
    coinfinder \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(inputInputRoarY) then ("--inputroary " +  '"' + inputInputRoarY + '"') else ""} \
      ~{if defined(phylogenyPhylogeny) then ("--phylogeny " +  '"' + phylogenyPhylogeny + '"') else ""} \
      ~{if defined(associateAssociate) then ("--associate " +  '"' + associateAssociate + '"') else ""} \
      ~{if defined(dissociateDissociate) then ("--dissociate " +  '"' + dissociateDissociate + '"') else ""} \
      ~{if defined(levelLevel) then ("--level " +  '"' + levelLevel + '"') else ""} \
      ~{if defined(bonferroniBonferroni) then ("--bonferroni " +  '"' + bonferroniBonferroni + '"') else ""} \
      ~{if defined(noNoCorrection) then ("--nocorrection " +  '"' + noNoCorrection + '"') else ""} \
      ~{if defined(fractionFraction) then ("--fraction " +  '"' + fractionFraction + '"') else ""} \
      ~{if defined(greaterGreater) then ("--greater " +  '"' + greaterGreater + '"') else ""} \
      ~{if defined(lessLess) then ("--less " +  '"' + lessLess + '"') else ""} \
      ~{if defined(twoTwoTailed) then ("--twotailed " +  '"' + twoTwoTailed + '"') else ""} \
      ~{if defined(numNumCores) then ("--num_cores " +  '"' + numNumCores + '"') else ""} \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""} \
      ~{if defined(filterFilter) then ("--filter " +  '"' + filterFilter + '"') else ""} \
      ~{if defined(upUpFilThreshold) then ("--upfilthreshold " +  '"' + upUpFilThreshold + '"') else ""} \
      ~{if defined(filFilThreshold) then ("--filthreshold " +  '"' + filFilThreshold + '"') else ""} \
      ~{if defined(queryQuery) then ("--query " +  '"' + queryQuery + '"') else ""} \
      ~{if defined(testTest) then ("--test " +  '"' + testTest + '"') else ""} \
      ~{if defined(allAll) then ("--all " +  '"' + allAll + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}