version 1.0

task Structure.py {
  input {
    Int kK
    File inputInput
    File outputOutput
    Float toToL
    String priorPrior
    Int cvCv
    String formatFormat
    Boolean fullFull
    Int seedSeed
  }
  command <<<
    structure.py \
      ~{if defined(kK) then ("-K " +  '"' + kK + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(toToL) then ("--tol " +  '"' + toToL + '"') else ""} \
      ~{if defined(priorPrior) then ("--prior " +  '"' + priorPrior + '"') else ""} \
      ~{if defined(cvCv) then ("--cv " +  '"' + cvCv + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{true="--full" false="" fullFull} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""}
  >>>
}