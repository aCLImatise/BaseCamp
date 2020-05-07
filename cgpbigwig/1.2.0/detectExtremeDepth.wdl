version 1.0

task DetectExtremeDepth {
  input {
    String namedNamed
    Boolean withoutWithout
    Boolean ifIf
    String? ofOf
    String? bigwigBigwig
    File? fileFile
    String? andAnd
    String? identifyIdentify
    String? regionsRegions
    String? outsideOutside
    String? theThe
    String? normalNormal
    String? rangeRange
  }
  command <<<
    detectExtremeDepth \
      ~{ofOf} \
      ~{if defined(namedNamed) then ("- named " +  '"' + namedNamed + '"') else ""} \
      ~{true="- without" false="" withoutWithout} \
      ~{true="- if" false="" ifIf} \
      ~{bigwigBigwig} \
      ~{fileFile} \
      ~{andAnd} \
      ~{identifyIdentify} \
      ~{regionsRegions} \
      ~{outsideOutside} \
      ~{theThe} \
      ~{normalNormal} \
      ~{rangeRange}
  >>>
}