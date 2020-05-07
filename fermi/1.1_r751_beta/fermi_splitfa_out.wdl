version 1.0

task FermiSplitfaOut.prefix {
  input {
    String? inInFq
    String? outOutPrefix
    String? 88
  }
  command <<<
    fermi splitfa out.prefix \
      ~{inInFq} \
      ~{outOutPrefix} \
      ~{88}
  >>>
}