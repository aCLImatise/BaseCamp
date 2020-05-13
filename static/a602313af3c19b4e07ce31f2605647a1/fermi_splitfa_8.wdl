version 1.0

task FermiSplitfa8 {
  input {
    String? inInFq
    String? outOutPrefix
    String? 88
  }
  command <<<
    fermi splitfa 8 \
      ~{inInFq} \
      ~{outOutPrefix} \
      ~{88}
  >>>
}