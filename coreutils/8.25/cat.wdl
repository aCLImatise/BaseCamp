version 1.0

task Cat {
  input {
    Boolean showShowAll
    Boolean numberNumberNonBlank
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
    cat \
      ~{true="--show-all" false="" showShowAll} \
      ~{true="--number-nonblank" false="" numberNumberNonBlank} \
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