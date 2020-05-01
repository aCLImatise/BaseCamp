version 1.0

task Preprocess {
  input {
    String inputInputVcf
    Boolean oO
    Boolean rR
    Boolean lL
    Boolean rR
    Boolean tT
    String progressProgress
    String haploidHaploidX
    String progressProgressSeconds
    String limitLimit
    Boolean vV
    Boolean lL
  }
  command <<<
    preprocess \
      ~{if defined(inputInputVcf) then ("--input-vcf " +  '"' + inputInputVcf + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{true="-r" false="" rR} \
      ~{true="-l" false="" lL} \
      ~{true="-R" false="" rR} \
      ~{true="-T" false="" tT} \
      ~{if defined(progressProgress) then ("--progress " +  '"' + progressProgress + '"') else ""} \
      ~{if defined(haploidHaploidX) then ("--haploid-x " +  '"' + haploidHaploidX + '"') else ""} \
      ~{if defined(progressProgressSeconds) then ("--progress-seconds " +  '"' + progressProgressSeconds + '"') else ""} \
      ~{if defined(limitLimit) then ("--limit " +  '"' + limitLimit + '"') else ""} \
      ~{true="-V" false="" vV} \
      ~{true="-L" false="" lL}
  >>>
}