version 1.0

task Unshuffle.py {
  input {
    String inputInput
    String forwardForward
    String reverseReverse
  }
  command <<<
    unshuffle.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(forwardForward) then ("--forward " +  '"' + forwardForward + '"') else ""} \
      ~{if defined(reverseReverse) then ("--reverse " +  '"' + reverseReverse + '"') else ""}
  >>>
}