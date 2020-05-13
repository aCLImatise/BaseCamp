version 1.0

task AlignCollect.py {
  input {
    String? inputInput
  }
  command <<<
    align_collect.py \
      ~{inputInput}
  >>>
}