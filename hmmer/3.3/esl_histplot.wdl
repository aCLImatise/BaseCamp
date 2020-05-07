version 1.0

task EslHistplot {
  input {
    String oO
    Boolean bB
    String fF
    String wW
    String minMin
    String maxMax
    Boolean survSurv
    Boolean gumbelGumbel
    Boolean expExpTail
    Boolean gevGev
    Boolean normalNormal
    String truncTrunc
    Boolean gumGumLoc
    Boolean expExpTailLoc
    Boolean showShowGum
    Boolean showShowExp
    Boolean showShowGev
    String alphaAlpha
    String lambdaLambda
    String muMu
    String tT
  }
  command <<<
    esl-histplot \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-b" false="" bB} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(minMin) then ("--min " +  '"' + minMin + '"') else ""} \
      ~{if defined(maxMax) then ("--max " +  '"' + maxMax + '"') else ""} \
      ~{true="--surv" false="" survSurv} \
      ~{true="--gumbel" false="" gumbelGumbel} \
      ~{true="--exptail" false="" expExpTail} \
      ~{true="--gev" false="" gevGev} \
      ~{true="--normal" false="" normalNormal} \
      ~{if defined(truncTrunc) then ("--trunc " +  '"' + truncTrunc + '"') else ""} \
      ~{true="--gumloc" false="" gumGumLoc} \
      ~{true="--exptailloc" false="" expExpTailLoc} \
      ~{true="--showgum" false="" showShowGum} \
      ~{true="--showexp" false="" showShowExp} \
      ~{true="--showgev" false="" showShowGev} \
      ~{if defined(alphaAlpha) then ("--alpha " +  '"' + alphaAlpha + '"') else ""} \
      ~{if defined(lambdaLambda) then ("--lambda " +  '"' + lambdaLambda + '"') else ""} \
      ~{if defined(muMu) then ("--mu " +  '"' + muMu + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""}
  >>>
}