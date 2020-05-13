version 1.0

task CircleMapReadExtractor {
  input {
    Boolean iI
    Boolean oO
    Boolean dirDir
    Boolean qQ
    Boolean noNoDiscordant
    Boolean noNoSoftClipped
    Boolean noNoHardClipped
    Boolean vV
  }
  command <<<
    Circle-Map ReadExtractor \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{true="-dir" false="" dirDir} \
      ~{true="-q" false="" qQ} \
      ~{true="--nodiscordant" false="" noNoDiscordant} \
      ~{true="--nosoftclipped" false="" noNoSoftClipped} \
      ~{true="--nohardclipped" false="" noNoHardClipped} \
      ~{true="-v" false="" vV}
  >>>
}