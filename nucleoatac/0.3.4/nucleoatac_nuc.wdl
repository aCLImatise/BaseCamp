version 1.0

task NucleoatacNuc {
  input {
    String bedBed
    String vmVmAt
    String bamBam
    String outOut
    String fastFastA
    String pwmPwm
    String sizesSizes
    String occOccTrack
    String coresCores
    Boolean writeWriteAll
    Boolean notNotAtac
    Float minMinZ
    Float minMinLr
    Int nucNucSep
    Int redundantRedundantSep
    Int sdSd
  }
  command <<<
    nucleoatac nuc \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(vmVmAt) then ("--vmat " +  '"' + vmVmAt + '"') else ""} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(pwmPwm) then ("--pwm " +  '"' + pwmPwm + '"') else ""} \
      ~{if defined(sizesSizes) then ("--sizes " +  '"' + sizesSizes + '"') else ""} \
      ~{if defined(occOccTrack) then ("--occ_track " +  '"' + occOccTrack + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{true="--write_all" false="" writeWriteAll} \
      ~{true="--not_atac" false="" notNotAtac} \
      ~{if defined(minMinZ) then ("--min_z " +  '"' + minMinZ + '"') else ""} \
      ~{if defined(minMinLr) then ("--min_lr " +  '"' + minMinLr + '"') else ""} \
      ~{if defined(nucNucSep) then ("--nuc_sep " +  '"' + nucNucSep + '"') else ""} \
      ~{if defined(redundantRedundantSep) then ("--redundant_sep " +  '"' + redundantRedundantSep + '"') else ""} \
      ~{if defined(sdSd) then ("--sd " +  '"' + sdSd + '"') else ""}
  >>>
}