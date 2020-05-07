version 1.0

task CentroidHomfold {
  input {
    Boolean hH
    String engineEngineS
    String engineEngineA
    Boolean gG
    Boolean tT
    Boolean eaEa
    Boolean oO
    String posteriorsPosteriors
    String oOPosteriors
    String postscriptPostscript
    String paramsParams
  }
  command <<<
    centroid_homfold \
      ~{true="-H" false="" hH} \
      ~{if defined(engineEngineS) then ("--engine_s " +  '"' + engineEngineS + '"') else ""} \
      ~{if defined(engineEngineA) then ("--engine_a " +  '"' + engineEngineA + '"') else ""} \
      ~{true="-g" false="" gG} \
      ~{true="-t" false="" tT} \
      ~{true="--ea" false="" eaEa} \
      ~{true="-o" false="" oO} \
      ~{if defined(posteriorsPosteriors) then ("--posteriors " +  '"' + posteriorsPosteriors + '"') else ""} \
      ~{if defined(oOPosteriors) then ("--oposteriors " +  '"' + oOPosteriors + '"') else ""} \
      ~{if defined(postscriptPostscript) then ("--postscript " +  '"' + postscriptPostscript + '"') else ""} \
      ~{if defined(paramsParams) then ("--params " +  '"' + paramsParams + '"') else ""}
  >>>
}