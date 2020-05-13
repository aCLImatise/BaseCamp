version 1.0

task CombineFragandDBGraphFastgOld.py {
  input {
    String? continueContinue
  }
  command <<<
    combineFragandDBGraph_fastg_old.py \
      ~{continueContinue}
  >>>
}