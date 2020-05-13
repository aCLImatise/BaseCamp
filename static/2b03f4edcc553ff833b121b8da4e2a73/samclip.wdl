version 1.0

task Samclip {
  input {
    String refRef
    String maxMax
    Boolean invertInvert
    Boolean debugDebug
    String progressProgress
  }
  command <<<
    samclip \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(maxMax) then ("--max " +  '"' + maxMax + '"') else ""} \
      ~{true="--invert" false="" invertInvert} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(progressProgress) then ("--progress " +  '"' + progressProgress + '"') else ""}
  >>>
}