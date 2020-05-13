version 1.0

task NucleoatacNfr {
  input {
    String bedBed
    String occOccTrack
    String callsCalls
    String insInsTrack
    String bamBam
    String fastFastA
    String pwmPwm
    String outOut
    String coresCores
    Float maxMaxOcc
    Float maxMaxOccUpper
  }
  command <<<
    nucleoatac nfr \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(occOccTrack) then ("--occ_track " +  '"' + occOccTrack + '"') else ""} \
      ~{if defined(callsCalls) then ("--calls " +  '"' + callsCalls + '"') else ""} \
      ~{if defined(insInsTrack) then ("--ins_track " +  '"' + insInsTrack + '"') else ""} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(pwmPwm) then ("--pwm " +  '"' + pwmPwm + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{if defined(maxMaxOcc) then ("--max_occ " +  '"' + maxMaxOcc + '"') else ""} \
      ~{if defined(maxMaxOccUpper) then ("--max_occ_upper " +  '"' + maxMaxOccUpper + '"') else ""}
  >>>
}