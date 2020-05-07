version 1.0

task NetToBed {
  input {
    String maxMaxGap
    String minMinFill
    String? inInNet
    String? outOutBed
  }
  command <<<
    netToBed \
      ~{inInNet} \
      ~{if defined(maxMaxGap) then ("-maxGap " +  '"' + maxMaxGap + '"') else ""} \
      ~{if defined(minMinFill) then ("-minFill " +  '"' + minMinFill + '"') else ""} \
      ~{outOutBed}
  >>>
}