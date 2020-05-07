version 1.0

task CombineFragandDBGraphFastg.py {
  input {
    String? continueContinue
  }
  command <<<
    combineFragandDBGraph_fastg.py \
      ~{continueContinue}
  >>>
}