version 1.0

task Vcfsort {
  input {
    Boolean eE
    Boolean showShowEnds
    Boolean numberNumber
    Boolean squeezeSqueezeBlank
    String tT
    String showShowTabs
    Boolean uU
    String showShowNonPrinting
  }
  command <<<
    vcfsort \
      ~{true="-e" false="" eE} \
      ~{true="--show-ends" false="" showShowEnds} \
      ~{true="--number" false="" numberNumber} \
      ~{true="--squeeze-blank" false="" squeezeSqueezeBlank} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(showShowTabs) then ("--show-tabs " +  '"' + showShowTabs + '"') else ""} \
      ~{true="-u" false="" uU} \
      ~{if defined(showShowNonPrinting) then ("--show-nonprinting " +  '"' + showShowNonPrinting + '"') else ""}
  >>>
}