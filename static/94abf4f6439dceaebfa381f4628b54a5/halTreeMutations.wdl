version 1.0

task HalTreeMutations.py {
  input {
    String? halHal
    String? outdirOutdir
  }
  command <<<
    halTreeMutations.py \
      ~{halHal} \
      ~{outdirOutdir}
  >>>
}