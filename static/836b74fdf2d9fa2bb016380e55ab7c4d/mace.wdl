version 1.0

task Mace.py {
  input {
    String forwardForward
    String reverseReverse
    String chromChromSize
    String outOutPrefix
    String pPValue
    Int maxMaxDist
    String fzFzWindow
    String bgBgWindow
    String foldFold
  }
  command <<<
    mace.py \
      ~{if defined(forwardForward) then ("--forward " +  '"' + forwardForward + '"') else ""} \
      ~{if defined(reverseReverse) then ("--reverse " +  '"' + reverseReverse + '"') else ""} \
      ~{if defined(chromChromSize) then ("--chromSize " +  '"' + chromChromSize + '"') else ""} \
      ~{if defined(outOutPrefix) then ("--out-prefix " +  '"' + outOutPrefix + '"') else ""} \
      ~{if defined(pPValue) then ("--pvalue " +  '"' + pPValue + '"') else ""} \
      ~{if defined(maxMaxDist) then ("--max-dist " +  '"' + maxMaxDist + '"') else ""} \
      ~{if defined(fzFzWindow) then ("--fz-window " +  '"' + fzFzWindow + '"') else ""} \
      ~{if defined(bgBgWindow) then ("--bg-window " +  '"' + bgBgWindow + '"') else ""} \
      ~{if defined(foldFold) then ("--fold " +  '"' + foldFold + '"') else ""}
  >>>
}