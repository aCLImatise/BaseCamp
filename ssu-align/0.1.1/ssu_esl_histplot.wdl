version 1.0

task SsuEslHistplot {
  input {
    String oO
    Boolean bB
    String fF
    String wW
    String minMin
    String maxMax
    Boolean survSurv
    Boolean gumbelGumbel
    String truncTrunc
    Boolean expExpTail
    Boolean gumGumLoc
    Boolean expExpTailLoc
    Boolean showShowGum
    Boolean showShowExp
    String lambdaLambda
    String muMu
    String tT
  }
  command <<<
    ssu-esl-histplot \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-b" false="" bB} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(minMin) then ("--min " +  '"' + minMin + '"') else ""} \
      ~{if defined(maxMax) then ("--max " +  '"' + maxMax + '"') else ""} \
      ~{true="--surv" false="" survSurv} \
      ~{true="--gumbel" false="" gumbelGumbel} \
      ~{if defined(truncTrunc) then ("--trunc " +  '"' + truncTrunc + '"') else ""} \
      ~{true="--exptail" false="" expExpTail} \
      ~{true="--gumloc" false="" gumGumLoc} \
      ~{true="--exptailloc" false="" expExpTailLoc} \
      ~{true="--showgum" false="" showShowGum} \
      ~{true="--showexp" false="" showShowExp} \
      ~{if defined(lambdaLambda) then ("--lambda " +  '"' + lambdaLambda + '"') else ""} \
      ~{if defined(muMu) then ("--mu " +  '"' + muMu + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""}
  >>>
}