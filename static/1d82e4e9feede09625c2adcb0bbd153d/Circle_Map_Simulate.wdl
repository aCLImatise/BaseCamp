version 1.0

task CircleMapSimulate {
  input {
    Boolean gG
    Boolean nN
    String outputOutput
    Boolean dirDir
    Boolean bB
    Boolean sS
    Boolean rR
    Boolean mM
    Boolean cC
    Boolean pP
    Boolean variantsVariants
    Boolean sS
    Boolean iI
    Boolean jJ
    Boolean errorError
    Boolean iI
    Boolean irIr
    Boolean ir2Ir2
    Boolean drDr
    Boolean dr2Dr2
    String? bam2bamBam2bam
  }
  command <<<
    Circle-Map Simulate \
      ~{bam2bamBam2bam} \
      ~{true="-g" false="" gG} \
      ~{true="-N" false="" nN} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="-dir" false="" dirDir} \
      ~{true="-b" false="" bB} \
      ~{true="-s" false="" sS} \
      ~{true="-r" false="" rR} \
      ~{true="-m" false="" mM} \
      ~{true="-c" false="" cC} \
      ~{true="-p" false="" pP} \
      ~{true="--variants" false="" variantsVariants} \
      ~{true="-S" false="" sS} \
      ~{true="-I" false="" iI} \
      ~{true="-J" false="" jJ} \
      ~{true="--error" false="" errorError} \
      ~{true="-i" false="" iI} \
      ~{true="-ir" false="" irIr} \
      ~{true="-ir2" false="" ir2Ir2} \
      ~{true="-dr" false="" drDr} \
      ~{true="-dr2" false="" dr2Dr2}
  >>>
}