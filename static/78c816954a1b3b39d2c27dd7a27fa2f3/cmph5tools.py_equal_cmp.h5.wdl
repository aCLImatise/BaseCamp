version 1.0

task Cmph5tools.pyEqualCmp.h5.2 {
  input {
    String? cmph51Cmph51
    String? cmph52Cmph52
  }
  command <<<
    cmph5tools.py equal cmp.h5.2 \
      ~{cmph51Cmph51} \
      ~{cmph52Cmph52}
  >>>
}