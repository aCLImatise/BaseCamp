version 1.0

task Splitsam4way.sh {
  input {
    String? inputInput
    String? outOutPlus
    String? outOutMinus
    String? outOutChimeric
    String? outOutUnmapped
  }
  command <<<
    splitsam4way.sh \
      ~{inputInput} \
      ~{outOutPlus} \
      ~{outOutMinus} \
      ~{outOutChimeric} \
      ~{outOutUnmapped}
  >>>
}