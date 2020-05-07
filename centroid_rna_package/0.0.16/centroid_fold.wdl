version 1.0

task CentroidFold {
  input {
    Boolean eE
    Boolean wW
    Boolean gG
    Boolean tT
    String eaEa
    String maxMaxMcc
    Boolean meMeA
    Boolean noncanonicalNoncanonical
    Boolean cC
    Boolean oO
    String posteriorsPosteriors
    String oOPosteriors
    String postscriptPostscript
    String paramsParams
    Boolean dD
    Boolean sS
    Boolean cC
    String seedSeed
  }
  command <<<
    centroid_fold \
      ~{true="-e" false="" eE} \
      ~{true="-w" false="" wW} \
      ~{true="-g" false="" gG} \
      ~{true="-t" false="" tT} \
      ~{if defined(eaEa) then ("--ea " +  '"' + eaEa + '"') else ""} \
      ~{if defined(maxMaxMcc) then ("--max-mcc " +  '"' + maxMaxMcc + '"') else ""} \
      ~{true="--mea" false="" meMeA} \
      ~{true="--noncanonical" false="" noncanonicalNoncanonical} \
      ~{true="-C" false="" cC} \
      ~{true="-o" false="" oO} \
      ~{if defined(posteriorsPosteriors) then ("--posteriors " +  '"' + posteriorsPosteriors + '"') else ""} \
      ~{if defined(oOPosteriors) then ("--oposteriors " +  '"' + oOPosteriors + '"') else ""} \
      ~{if defined(postscriptPostscript) then ("--postscript " +  '"' + postscriptPostscript + '"') else ""} \
      ~{if defined(paramsParams) then ("--params " +  '"' + paramsParams + '"') else ""} \
      ~{true="-d" false="" dD} \
      ~{true="-s" false="" sS} \
      ~{true="-c" false="" cC} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""}
  >>>
}