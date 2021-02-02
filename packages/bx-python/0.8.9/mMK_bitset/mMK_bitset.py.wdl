version 1.0

task MMKBitsetpy {
  command <<<
    mMK_bitset_py
  >>>
  output {
    File out_stdout = stdout()
  }
}