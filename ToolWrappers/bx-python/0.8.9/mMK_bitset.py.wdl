version 1.0

task MMKBitsetpy {
  command <<<
    mMK_bitset_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}