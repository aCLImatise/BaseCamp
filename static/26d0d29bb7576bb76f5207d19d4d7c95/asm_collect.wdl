version 1.0

task AsmCollect.py {
  input {
    String? inputInput
  }
  command <<<
    asm_collect.py \
      ~{inputInput}
  >>>
}