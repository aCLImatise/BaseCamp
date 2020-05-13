version 1.0

task RemuRNA {
  input {
    Boolean naNa
    Boolean energyEnergy
    Boolean tmTmIn
    Boolean tincTinc
    Boolean tmaxTmax
    Boolean suffixSuffix
    Boolean logLog
    Boolean sodiumSodium
    Boolean magnesiumMagnesium
    Boolean windowWindow
    Boolean procProc
    Boolean polymerPolymer
    Boolean zipZip
    Boolean mutationsMutations
    Boolean noNoDangle
  }
  command <<<
    remuRNA \
      ~{true="--NA" false="" naNa} \
      ~{true="--energy" false="" energyEnergy} \
      ~{true="--tmin" false="" tmTmIn} \
      ~{true="--tinc" false="" tincTinc} \
      ~{true="--tmax" false="" tmaxTmax} \
      ~{true="--suffix" false="" suffixSuffix} \
      ~{true="--log" false="" logLog} \
      ~{true="--sodium" false="" sodiumSodium} \
      ~{true="--magnesium" false="" magnesiumMagnesium} \
      ~{true="--window" false="" windowWindow} \
      ~{true="--proc" false="" procProc} \
      ~{true="--polymer" false="" polymerPolymer} \
      ~{true="--zip" false="" zipZip} \
      ~{true="--mutations" false="" mutationsMutations} \
      ~{true="--nodangle" false="" noNoDangle}
  >>>
}