version 1.0

task InterProphetParser {
  input {
    Int? lengthLength
    String? noNoFpKm
    String? nonNonSs
    String? nonNonSe
    String? nonNonRs
    String? nonNonSm
    String? nonNonSp
    String? sharpSharpNse
    String? nonNonSi
  }
  command <<<
    InterProphetParser \
      ~{lengthLength} \
      ~{noNoFpKm} \
      ~{nonNonSs} \
      ~{nonNonSe} \
      ~{nonNonRs} \
      ~{nonNonSm} \
      ~{nonNonSp} \
      ~{sharpSharpNse} \
      ~{nonNonSi}
  >>>
}