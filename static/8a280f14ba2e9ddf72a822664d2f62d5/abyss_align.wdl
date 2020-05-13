version 1.0

task AbyssAlign {
  input {
    Boolean verboseVerbose
    String diDiAlignD
    File diDiAlignM
    File diDiAlignP
    String? fastFastA
  }
  command <<<
    abyss-align \
      ~{fastFastA} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(diDiAlignD) then ("--dialign-d " +  '"' + diDiAlignD + '"') else ""} \
      ~{if defined(diDiAlignM) then ("--dialign-m " +  '"' + diDiAlignM + '"') else ""} \
      ~{if defined(diDiAlignP) then ("--dialign-p " +  '"' + diDiAlignP + '"') else ""}
  >>>
}