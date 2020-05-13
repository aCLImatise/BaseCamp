version 1.0

task SmCounter2 {
  input {
    String runRunPath
    String bedBedTarget
    String bamBamFile
    String outOutPrefix
    String nNCpu
    Int minMinBq
    Int minMinMq
    String hpHpLen
    String mismatchMismatchThr
    String primerPrimerDist
    String mtMtThreshold
    String rpbRpb
    Boolean isIsRna
    String primerPrimerSide
    Int minalMinalTumi
    Int maxaltMaxaltAllele
    String refRefGenome
    String repRepBed
    String srSrBed
    String dsDs
    String bamBamType
    String inputInputVcf
  }
  command <<<
    smCounter2 \
      ~{if defined(runRunPath) then ("--runPath " +  '"' + runRunPath + '"') else ""} \
      ~{if defined(bedBedTarget) then ("--bedTarget " +  '"' + bedBedTarget + '"') else ""} \
      ~{if defined(bamBamFile) then ("--bamFile " +  '"' + bamBamFile + '"') else ""} \
      ~{if defined(outOutPrefix) then ("--outPrefix " +  '"' + outOutPrefix + '"') else ""} \
      ~{if defined(nNCpu) then ("--nCPU " +  '"' + nNCpu + '"') else ""} \
      ~{if defined(minMinBq) then ("--minBQ " +  '"' + minMinBq + '"') else ""} \
      ~{if defined(minMinMq) then ("--minMQ " +  '"' + minMinMq + '"') else ""} \
      ~{if defined(hpHpLen) then ("--hpLen " +  '"' + hpHpLen + '"') else ""} \
      ~{if defined(mismatchMismatchThr) then ("--mismatchThr " +  '"' + mismatchMismatchThr + '"') else ""} \
      ~{if defined(primerPrimerDist) then ("--primerDist " +  '"' + primerPrimerDist + '"') else ""} \
      ~{if defined(mtMtThreshold) then ("--mtThreshold " +  '"' + mtMtThreshold + '"') else ""} \
      ~{if defined(rpbRpb) then ("--rpb " +  '"' + rpbRpb + '"') else ""} \
      ~{true="--isRna" false="" isIsRna} \
      ~{if defined(primerPrimerSide) then ("--primerSide " +  '"' + primerPrimerSide + '"') else ""} \
      ~{if defined(minalMinalTumi) then ("--minAltUMI " +  '"' + minalMinalTumi + '"') else ""} \
      ~{if defined(maxaltMaxaltAllele) then ("--maxAltAllele " +  '"' + maxaltMaxaltAllele + '"') else ""} \
      ~{if defined(refRefGenome) then ("--refGenome " +  '"' + refRefGenome + '"') else ""} \
      ~{if defined(repRepBed) then ("--repBed " +  '"' + repRepBed + '"') else ""} \
      ~{if defined(srSrBed) then ("--srBed " +  '"' + srSrBed + '"') else ""} \
      ~{if defined(dsDs) then ("--ds " +  '"' + dsDs + '"') else ""} \
      ~{if defined(bamBamType) then ("--bamType " +  '"' + bamBamType + '"') else ""} \
      ~{if defined(inputInputVcf) then ("--inputVCF " +  '"' + inputInputVcf + '"') else ""}
  >>>
}