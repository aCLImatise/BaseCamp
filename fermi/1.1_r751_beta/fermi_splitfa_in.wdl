version 1.0

task FermiSplitfaIn.fq {
  input {
    String? outOutPrefix
    String? 88
  }
  command <<<
    fermi splitfa in.fq \
      ~{outOutPrefix} \
      ~{88}
  >>>
}